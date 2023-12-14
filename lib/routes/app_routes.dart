import 'package:flutter/material.dart';
import 'package:mix_chat/presentation/twitter_home_container_screen/twitter_home_container_screen.dart';
import 'package:mix_chat/presentation/twitter_messages_settings_tab_container_screen/twitter_messages_settings_tab_container_screen.dart';
import 'package:mix_chat/presentation/twitter_tweeting_screen/twitter_tweeting_screen.dart';
import 'package:mix_chat/presentation/twitter_new_message_screen/twitter_new_message_screen.dart';
import 'package:mix_chat/presentation/twitter_search_screen/twitter_search_screen.dart';
import 'package:mix_chat/presentation/twitter_lists_subscribed_to_tab_container_screen/twitter_lists_subscribed_to_tab_container_screen.dart';
import 'package:mix_chat/presentation/twitter_tweet_of_mine_screen/twitter_tweet_of_mine_screen.dart';
import 'package:mix_chat/presentation/twitter_tweet_of_someone_screen/twitter_tweet_of_someone_screen.dart';
import 'package:mix_chat/presentation/twitter_retweeted_tweet_screen/twitter_retweeted_tweet_screen.dart';
import 'package:mix_chat/presentation/twitter_profile_likes_tab_container_screen/twitter_profile_likes_tab_container_screen.dart';
import 'package:mix_chat/presentation/twitter_video_player_screen/twitter_video_player_screen.dart';
import 'package:mix_chat/presentation/twitter_settings_and_privacy_screen/twitter_settings_and_privacy_screen.dart';
import 'package:mix_chat/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String twitterHomePage = '/twitter_home_page';

  static const String twitterHomeContainerScreen =
      '/twitter_home_container_screen';

  static const String twitterTrendsPage = '/twitter_trends_page';

  static const String twitterNotificationsAllPage =
      '/twitter_notifications_all_page';

  static const String twitterNotificationsMentionsPage =
      '/twitter_notifications_mentions_page';

  static const String twitterNotificationsMentionsTabContainerPage =
      '/twitter_notifications_mentions_tab_container_page';

  static const String twitterMessagesSettingsPage =
      '/twitter_messages_settings_page';

  static const String twitterMessagesSettingsTabContainerScreen =
      '/twitter_messages_settings_tab_container_screen';

  static const String twitterMessagesPage = '/twitter_messages_page';

  static const String twitterTweetingScreen = '/twitter_tweeting_screen';

  static const String twitterNewMessageScreen = '/twitter_new_message_screen';

  static const String twitterSearchScreen = '/twitter_search_screen';

  static const String twitterListsSubscribedToPage =
      '/twitter_lists_subscribed_to_page';

  static const String twitterListsSubscribedToTabContainerScreen =
      '/twitter_lists_subscribed_to_tab_container_screen';

  static const String twitterListsMembersOfPage =
      '/twitter_lists_members_of_page';

  static const String twitterTweetOfMineScreen =
      '/twitter_tweet_of_mine_screen';

  static const String twitterTweetOfSomeoneScreen =
      '/twitter_tweet_of_someone_screen';

  static const String twitterRetweetedTweetScreen =
      '/twitter_retweeted_tweet_screen';

  static const String twitterProfileTweetsPage = '/twitter_profile_tweets_page';

  static const String twitterProfileTweetsRepliesPage =
      '/twitter_profile_tweets_replies_page';

  static const String twitterProfileMediaPage = '/twitter_profile_media_page';

  static const String twitterProfileLikesPage = '/twitter_profile_likes_page';

  static const String twitterProfileLikesTabContainerScreen =
      '/twitter_profile_likes_tab_container_screen';

  static const String twitterVideoPlayerScreen = '/twitter_video_player_screen';

  static const String twitterSettingsAndPrivacyScreen =
      '/twitter_settings_and_privacy_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    twitterHomeContainerScreen: (context) => TwitterHomeContainerScreen(),
    twitterMessagesSettingsTabContainerScreen: (context) =>
        TwitterMessagesSettingsTabContainerScreen(),
    twitterTweetingScreen: (context) => TwitterTweetingScreen(),
    twitterNewMessageScreen: (context) => TwitterNewMessageScreen(),
    twitterSearchScreen: (context) => TwitterSearchScreen(),
    twitterListsSubscribedToTabContainerScreen: (context) =>
        TwitterListsSubscribedToTabContainerScreen(),
    twitterTweetOfMineScreen: (context) => TwitterTweetOfMineScreen(),
    twitterTweetOfSomeoneScreen: (context) => TwitterTweetOfSomeoneScreen(),
    twitterRetweetedTweetScreen: (context) => TwitterRetweetedTweetScreen(),
    twitterProfileLikesTabContainerScreen: (context) =>
        TwitterProfileLikesTabContainerScreen(),
    twitterVideoPlayerScreen: (context) => TwitterVideoPlayerScreen(),
    twitterSettingsAndPrivacyScreen: (context) =>
        TwitterSettingsAndPrivacyScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
