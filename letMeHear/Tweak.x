
#import <Foundation/Foundation.h>
#import <AVFAudio/AVFAudio.h>

%hook AVAudioSession

- (BOOL)setCategory:(AVAudioSessionCategory)category 
               mode:(AVAudioSessionMode)mode 
 routeSharingPolicy:(AVAudioSessionRouteSharingPolicy)policy 
            options:(AVAudioSessionCategoryOptions)options 
              error:(NSError * _Nullable *)outError {



				return %orig(AVAudioSessionCategoryPlayback, mode, policy, options, outError);


			  }

- (BOOL)setCategory:(AVAudioSessionCategory)category 
               mode:(AVAudioSessionMode)mode 
            options:(AVAudioSessionCategoryOptions)options 
              error:(NSError * _Nullable *)outError{


				return %orig(AVAudioSessionCategoryPlayback, mode, options, outError);


			  }


- (BOOL)setCategory:(AVAudioSessionCategory)category 
        withOptions:(AVAudioSessionCategoryOptions)options 
              error:(NSError * _Nullable *)outError{


				return %orig(AVAudioSessionCategoryPlayback, options, outError);


			  }


- (BOOL)setCategory:(AVAudioSessionCategory)category 
              error:(NSError * _Nullable *)outError{

				return %orig(AVAudioSessionCategoryPlayback, outError);

			  }

%end