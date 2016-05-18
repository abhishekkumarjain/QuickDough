#ifndef __COMMON_H__
#define __COMMON_H__

#include <iostream>
#include <vector>
#include <map>
#include <fstream>
#include <sstream>
#include <stdio.h>
#include <stdlib.h>

enum Opcode {
    MULADD, MULSUB, ADDADD, ADDSUB, SUBSUB, PHI, RSFAND, LSFADD, ABS, GT, LET, ANDAND
};

enum OperandType {
    INCONST, INVAR, UNUSED, OUTVAR, IM, IMOUT 
};

std::ostream& operator<< (std::ostream &os, Opcode instOpcode);
std::ostream& operator<< (std::ostream &os, OperandType opType);

#endif
