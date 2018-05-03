 module LCDdisplayTest(	
			CLK, reset_n, busy, rs, rw, e, lcd_data, data, key0, toleds, ledcheck, alustate
);  
input CLK;
input reset_n;


input key0;   
input [7:0] data; 

output busy;
output rs, rw, e;
output lcd_data;

output [7:0] toleds; 
output ledcheck; 
output [2:0] alustate; 


reg busy;


reg [7:0] lcd_data;
reg rw=0;
reg rs=0;
reg e=0;


reg [2:0] STATE=0;
reg [2:0] statecheck=3'b000;

reg [7:0] datacheck=8'b00000000;

integer clk_count=0;

integer k;
integer arraystart=0;
integer arrayend=10;

integer answerdelay=0;

integer displayval=8'h30;

reg [7:0] display_array[55];



initial
begin
	datacheck=data;
	//array for story lcd display codes
	display_array[0]=8'b01001111;   //OPERTATION= (0-9)
	display_array[1]=8'b01010000;
	display_array[2]=8'b01000101;
	display_array[3]=8'b01010010;
	display_array[4]=8'b01000001;
	display_array[5]=8'b01010100;
	display_array[6]=8'b01001001;
	display_array[7]=8'b01001111;
	display_array[8]=8'b01001110;
	display_array[9]=8'b00111101;
		
	display_array[10]=8'b01001111;  //OPERAND1=  (10-18)	
	display_array[11]=8'b01010000;
	display_array[12]=8'b01000101;
	display_array[13]=8'b01010010;
	display_array[14]=8'b01000001;
	display_array[15]=8'b01001110;
	display_array[16]=8'b01000100;
	display_array[17]=8'b00110001;
	display_array[18]=8'b00111101;
	
	display_array[19]=8'b01001111;  //OPERAND2=  (19-27)	
	display_array[20]=8'b01010000;
	display_array[21]=8'b01000101;
	display_array[22]=8'b01010010;
	display_array[23]=8'b01000001;
	display_array[24]=8'b01001110;
	display_array[25]=8'b01000100;
	display_array[26]=8'b00110010;
	display_array[27]=8'b00111101;
	 
	display_array[28]=8'b01000001;  //ANSWER= (28-34)
	display_array[29]=8'b01001110;
	display_array[30]=8'b01010011;
	display_array[31]=8'b01010111;
	display_array[32]=8'b01000101;
	display_array[33]=8'b01010010;
	display_array[34]=8'b00111101;
end

////////////////


ALU_8bit u1(
.clk(CLK),
.reset(reset_n),
.key0(key0),
.data(data),
.ans(toleds),
.ledcheck(ledcheck),
.state(alustate),
);


always @(posedge CLK) begin

	case(STATE)
		0: begin   //power up
			busy <= 1'b1;
			if(clk_count<(50000*50)) begin     //50000*50
				clk_count = clk_count + 1;
				STATE=0;
			end
			else begin
				clk_count=0;
				rs <= 1'b0;
				rw <= 1'b0;
				lcd_data <= 8'b00110000;
				STATE=1;
			end
		end 	
		1: begin   //initialise
			busy <= 1'b1;
			clk_count = clk_count + 1;
			if(clk_count<(10*50)) begin
				lcd_data <= 8'b00110100;
				e <= 1'b1;
				STATE=1;
			end
			else if(clk_count<(60*50)) begin
				lcd_data <= 8'b00000000;
				e <= 1'b0;
				STATE=1;	
			end
			else if(clk_count<(70*50)) begin
				lcd_data <= 8'b00001110;
				e <= 1'b1;
				STATE=1;	
			end
			else if(clk_count<(120*50)) begin
				lcd_data <= 8'b00000000;
				e <= 1'b0;
				STATE=1;	
			end
			else if(clk_count<(130*50)) begin
				lcd_data <= 8'b00000001;
				e <= 1'b1;
				STATE=1;	
			end
			else if(clk_count<(2130*50)) begin
				lcd_data <= 8'b00000000;
				e <= 1'b0;
				STATE=1;	
			end
			else if(clk_count<(2140*50)) begin
				lcd_data <= 8'b00000110;
				e <= 1'b1;
				STATE=1;	
			end
			else if(clk_count<(2200*50)) begin
				lcd_data <= 8'b00000000;
				e <= 1'b0;
				STATE=1;	
			end
			else begin
				clk_count=0;
				busy <= 1'b0;
				STATE=2;
			end 
		end
		2: begin //ready
			
			if (datacheck!=data) begin  //update data being displayed
				if (alustate==3'b000) begin
					arraystart=0;
					arrayend=10;
					STATE = 0;
					clk_count=0;
				end
				else if (alustate==3'b001) begin
					arraystart=10;
					arrayend=19;
					STATE = 0;
					clk_count=0;
				end
				else if (alustate==3'b010) begin
					arraystart=19;
					arrayend=28;
					STATE = 0;
					clk_count=0;
				end
						
				statecheck=alustate;
				datacheck=data;
			end 
			else begin
				if(arraystart<arrayend) begin	  //sending word to display
					busy <= 1'b1;					
					rs <= 1'b1;
					rw <= 1'b0;										
					lcd_data <= display_array[arraystart];
					arraystart = arraystart + 1;				
					clk_count=0;
					STATE=3;
				end 
				else if(arraystart==arrayend) begin  //displaying first hex digit of value
					if(alustate==3'b100) begin
						busy <= 1'b1;
						rs <= 1'b1;
						rw <= 1'b0;
						displayval = 8'h30 + toleds [7:4];
						if(displayval>57)
							displayval = 8'h07 + displayval;
						lcd_data <= displayval;
						arraystart = arraystart + 1;
						STATE=3;
					end
					else begin
						busy <= 1'b1;
						rs <= 1'b1;
						rw <= 1'b0;
						displayval = 8'h30 + data [7:4];
						if(displayval>57)
							displayval = 8'h07 + displayval;
						lcd_data <= displayval;
						arraystart = arraystart + 1;
						STATE=3;
					end
				end 
				else if(arraystart==arrayend+1) begin   //displaying second hex digit of value
					if(alustate==3'b100) begin
						busy <= 1'b1;
						rs <= 1'b1;
						rw <= 1'b0;
						displayval = 8'h30 + toleds [3:0];
						if(displayval>57)
							displayval = 8'h07 + displayval;
						lcd_data <= displayval;
						arraystart = arraystart + 1;
						STATE=3;
					end
					else begin 
						busy <= 1'b1;
						rs <= 1'b1;
						rw <= 1'b0;
						displayval = 8'h30 + data [3:0];
						if(displayval>57)
							displayval = 8'h07 + displayval;
						lcd_data <= displayval;
						arraystart = arraystart + 1;
						STATE=3;
					end 
				end

				else begin
					busy <= 1'b0;
					rs <= 1'b0;
					rw <= 1'b0;
					lcd_data <= 8'b00000000;
					clk_count=0;
					STATE=2;
				end 
				
				
				if (statecheck!=alustate) begin //if alu state changes
					if(alustate==3'b001) begin
						arraystart=10;
						arrayend=19;
					end 
					else if(alustate==3'b010) begin
						arraystart=19;
						arrayend=28;
					end
					else begin
						arraystart=10;
						arrayend=19;
					end 
					statecheck=alustate;
					clk_count=0;
					STATE=0;
				end
				if (alustate==3'b100) begin //delay to match timing when displaying answer
					if (answerdelay<50000000) 
						answerdelay=answerdelay + 1;
					else if (answerdelay==50000000) begin 
						statecheck=alustate;
						arraystart=28;
						arrayend=35;
						clk_count=0;
						STATE=0;
						answerdelay=100000000000;
					end
				end 
			end 
		end
		3: begin  //send
			busy <= 1'b1;
			if(clk_count<50*50) begin       
				busy <= 1'b1;
				if(clk_count<50) begin
					e <= 1'b0;
				end 
				else if(clk_count<14*50) begin
					e <= 1'b1;
				end 
				else if(clk_count<27*50) begin
					e <= 1'b0;
				end 
				clk_count = clk_count + 1;
				STATE=3;
			end 
			else begin
				clk_count=0;
				STATE = 2;
			end
		end 	
	endcase
	
	if(reset_n == 0) begin
		STATE = 0;
		clk_count=0;
		arraystart=0;
		arrayend=10;
		statecheck=3'b000;
		answerdelay=0;
	end 
	
	
end



endmodule



//--------------------------------------
//--------------------------------------
module ALU_8bit (
data   ,  // Data Input
clk    ,  // Clock
reset  ,  // Reset clock
ans , // Final Answer
key0   , // input toggle
state,
ledcheck
);

//-----------Input Ports---------------
input [7:0] data       ;
input clk, reset, key0 ; 

//-----------Output Ports---------------

output  [7:0] ans ;
output state;

output ledcheck;

//------------Internal Variables--------	

reg [2:0] state = 3'b000 ;
reg [15:0] res  ; 
reg [7:0] op1   ;
reg [7:0] op2   ;
reg [7:0] opc   ;
reg [7:0] ans   = 8'b11111111;
reg done ;

integer counter = 0;
reg clk_out=1'b0;

reg ledcheck=1'b0;

//-------------Code Starts Here---------

always @ (posedge clk_out)
	if (reset == 0)
		begin
			state = 3'b000; 
			op1 = 8'b00000000;
			op2 = 8'b00000000;
			opc = 8'b00000000;
			res = 15'b00000000;
			// show operation
		end 
	else 
		begin
		case (state)
			
		3'b000 :
			begin
				if (key0 == 0) begin
					opc = data;
					state = 3'b001;
				end
				// show operation 
			end
			
		3'b001 :
			begin
				if (key0 == 0) begin
					op1 = data;
					state = 3'b010;
				end
				// show operation 
			end
			
		3'b010 :
			begin
				if (key0 == 0) begin
					op2 = data;
					state = 3'b011;
				end
				// show operation 
			end
			
		3'b011 :
			begin
				case(opc)

					//arithmetic
					8'b00000000 : res <= op1 + op2 ; 
					8'b00000001	: res <= op1 - op2 ;
					8'b00000010 : res <= op2 - op1 ;
					8'b00000011 : res <= op1 * op2 ;
					8'b00000100 : res <= op1 / op2 ;
					8'b00000101 : res <= op2 / op1 ;
					8'b00000110 : res <= op1 % op2 ;
					8'b00000111 : res <= op2 % op1 ;
						
					//arithmetic shifts
					8'b01101010 : res <= (op1 >>> op2[2:0]);
					8'b11101011 : res <= (op1 <<< op2[2:0]);

					// logical
					8'b00010000 : res <= op1 & op2 ;
					8'b00010001 : res <= op1 | op2 ;
					8'b00010010 : res <= ~op1  ;
					8'b00010011 : res <= ~op2 ;
					8'b00010100 : res <= ~(op1 & op2) ; 
					8'b00010101 : res <= ~(op1 | op2) ; 
					8'b00010110 : res <= op1 ^ op2 ;  
					8'b00010111 : res <= ~(op1 ^ op2) ; 
						
					// more rotates/shifts 
					8'b00111000 : res <= ((op1 >> op2[2:0]) | (op1 << ((~op2[2:0]) + 3'b001 )));
					8'b00111001 : res <= ((op1 << op2[2:0]) | (op1 >> ((~op2[2:0]) + 3'b001 )));
					8'b01111010 : res <= (op1 >> op2[2:0]);
					8'b11111011 : res <= (op1 << op2[2:0]);
				
					default : $display("Invalid ALU Operation");
				endcase
				state = 3'b100;
			end
				
			3'b100 :
				begin
				ans = res[7:0];
				if (key0 == 0) 
					state = 3'b000;
				
				//show answer
			end
	
		endcase
	end
		


	always @ (posedge clk)	begin   //clock divider
		if (counter == 25000000) begin 
			ledcheck = ~ledcheck;
			clk_out = ~clk_out;
			counter = 0;
		end 
		else 
			counter = counter + 1;	
	end
	
endmodule
 