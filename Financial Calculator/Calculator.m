//
//  Calculator.m
//  FinancialCalculator
//
//  Created by Peter Appleby on 12/1/14.
//  Copyright (c) 2014 Peter Appleby. All rights reserved.
//

#import "Calculator.h"
#

@implementation Calculator {
    NSMutableArray *_payments;
}

- (id)init {
    
    if ( _payments == nil ) {
        _payments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addPayment:(ASCPaymentStream *)p {
    [self insertObject:p inPaymentsAtIndex:[self.payments count]];
}

- (void)removePayment:(ASCPaymentStream *)p {
    [self removeObjectFromPaymentsAtIndex:[self.payments indexOfObject:p]];
}

- (NSArray *)payments {
    return [_payments copy];
}

-(void)setPayments:(NSArray *)a {
    [self willChangeValueForKey:@"payments"];
    _payments = [NSMutableArray arrayWithArray:a];
    [self didChangeValueForKey:@"payments"];
}

- (void)insertObject:(ASCPaymentStream *)p inPaymentsAtIndex:(NSUInteger)index
{
    NSLog(@"adding %@ to %@", p, _payments);
    _payments[index] = p;
}

- (void)removeObjectFromPaymentsAtIndex:(NSUInteger)index
{
    NSLog(@"Removing %lu from %@", (unsigned long)index, _payments);
    [_payments  removeObjectAtIndex:index];
}

@end
