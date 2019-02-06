/* -*- Mode:C++; c-file-style:"gnu"; indent-tabs-mode:nil; -*- */

#include <math.h>

// this function returns a random value between 0 and 1 as double
double GetRandVar (void)	{
	return double(std::rand()) / double(RAND_MAX);
}