#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*NSLog(@"Hello, World hej hej!");
        NSLog(@"Girl bye!");
        
        NSString *nothing = nil;
        NSLog(@"Location of nil : %p", nothing);*/
        
        NSString *quote = @"A queen is never late, everyone else is simply early";
        NSLog(@"Size of string : %d ",(int)[quote length]);
        NSLog(@"Char at index 5 : %c", [quote characterAtIndex:5]);
        
        char *name = "Dominique";
        NSString *my_name = [NSString stringWithFormat: @"-%s", name];
        
        BOOL is_string_equal = [quote isEqualToString: my_name];
        printf("Are stirngs equal : %d\n", is_string_equal);
        
        const char *uCString = [[my_name uppercaseString]UTF8String];
        // ^^converting from NS string to regular string (+ uppercase)
        
        printf("reg string : %s\n", uCString);
        
        NSString *whole = [quote stringByAppendingString: my_name];
        NSRange sear_result = [whole rangeOfString:@"Dominique"];
        
        if(sear_result.location == NSNotFound){
            NSLog(@"String not found");
        } else {
            printf("Dominique is at index %lu and is %lu long\n", sear_result.location, sear_result.length);
        }
    }
    return 0;
}
