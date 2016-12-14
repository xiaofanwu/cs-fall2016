/*
 FCAPI+Location.m
 fullcontact-objc
 
 Created by Duane Schleen on 10/4/12.
 
 Copyright (c)        2013 FullContact Inc.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "FCAPI+Location.h"

@implementation FCAPI (Location)

-(void)normalizeLocation:(NSString*)place
         success:(FCSuccessBlock)success
         failure:(FCFailureBlock)failure
{
    [self get:ENDPOINT_LOCATION_NORMALIZER withParameters:@{@"place":place} success:success failure:failure];
}

-(void)enrich:(NSString*)place
      success:(FCSuccessBlock)success
      failure:(FCFailureBlock)failure
{
    [self get:ENDPOINT_LOCATION_ENRICHMENT withParameters:@{@"place":place} success:success failure:failure];

}

@end
