.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$VpnCallback;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$MyHandler;,
        Lcom/android/server/ConnectivityService$FeatureUser;,
        Lcom/android/server/ConnectivityService$RadioAttributes;,
        Lcom/android/server/ConnectivityService$Injector;
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field private static final DBG:Z = true

.field private static final DEFAULT_ROUTE_MOD_DELAY:I = 0x64

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x6d

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x66

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x6c

.field private static final EVENT_INET_CONDITION_CHANGE:I = 0x68

.field private static final EVENT_INET_CONDITION_HOLD_END:I = 0x69

.field private static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x65

.field private static final EVENT_RESTORE_DNS:I = 0x6f

.field private static final EVENT_SEND_STICKY_BROADCAST_INTENT:I = 0x70

.field private static final EVENT_SET_DEPENDENCY_MET:I = 0x6e

.field private static final EVENT_SET_MOBILE_DATA:I = 0x6b

.field private static final EVENT_SET_NETWORK_PREFERENCE:I = 0x67

.field private static final EVENT_SET_POLICY_DATA_ENABLE:I = 0x71

.field private static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field private static final LOGD_RULES:Z = false

.field private static final MAX_HOSTROUTE_CYCLE_COUNT:I = 0xa

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final REMOVE:Z = false

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static final TO_DEFAULT_TABLE:Z = true

.field private static final TO_SECONDARY_TABLE:Z

.field private static final VDBG:Z

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private mActiveDefaultNetwork:I

.field private mAddedRoutes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentLinkProperties:[Landroid/net/LinkProperties;

.field private mDefaultConnectionSequence:I

.field private mDefaultDns:Ljava/net/InetAddress;

.field private mDefaultInetCondition:I

.field private mDefaultInetConditionPublished:I

.field private mDefaultProxy:Landroid/net/ProxyProperties;

.field private mDefaultProxyDisabled:Z

.field private mDefaultProxyLock:Ljava/lang/Object;

.field private mDnsLock:Ljava/lang/Object;

.field private mDnsOverridden:Z

.field private mFeatureUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ConnectivityService$FeatureUser;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalProxy:Landroid/net/ProxyProperties;

.field private final mGlobalProxyLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mInetConditionChangeInFlight:Z

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNetConfigs:[Landroid/net/NetworkConfig;

.field private mNetRequestersPids:[Ljava/util/List;

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockCausedBy:Ljava/lang/String;

.field private mNetTransitionWakeLockSerialNumber:I

.field private mNetTransitionWakeLockTimeout:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkPreference:I

.field mNetworksDefined:I

.field private mNumDnsEntries:I

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPriorityList:[I

.field mProtectedNetworks:Ljava/util/List;

.field mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

.field private mRulesLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mSystemReady:Z

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTetheringConfigValid:Z

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mVpn:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 33
    .parameter "context"
    .parameter "netd"
    .parameter "statsService"
    .parameter "policyManager"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 339
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 133
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 138
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    .line 140
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 142
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 169
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 171
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 172
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 173
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 174
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 176
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    .line 178
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    .line 296
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    .line 311
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 312
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    .line 313
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 316
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 317
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    .line 1473
    new-instance v2, Lcom/android/server/ConnectivityService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    const-string v2, "ConnectivityService starting up"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/miui/server/FirewallService;->setupService(Landroid/content/Context;)V

    new-instance v13, Landroid/os/HandlerThread;

    const-string v2, "ConnectivityServiceThread"

    invoke-direct {v13, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v13, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/ConnectivityService$MyHandler;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$MyHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    .line 347
    const-string v2, "net.hostname"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 350
    .local v16, id:Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 351
    new-instance v2, Ljava/lang/String;

    const-string v3, "android-"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 352
    .local v24, name:Ljava/lang/String;
    const-string v2, "net.hostname"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .end local v16           #id:Ljava/lang/String;
    .end local v24           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_dns_server"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 359
    .local v11, dns:Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 360
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 364
    :cond_2
    :try_start_0
    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    const-string v2, "missing Context"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 370
    const-string v2, "missing INetworkManagementService"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    .line 371
    const-string v2, "missing INetworkPolicyManager"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 374
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 380
    :goto_1
    const-string v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/PowerManager;

    .line 382
    .local v28, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "ConnectivityService"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 386
    const/16 v2, 0xe

    new-array v2, v2, [Landroid/net/NetworkStateTracker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 388
    const/16 v2, 0xe

    new-array v2, v2, [Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getPersistedNetworkPreference()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 392
    const/16 v2, 0xe

    new-array v2, v2, [Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    .line 393
    const/16 v2, 0xe

    new-array v2, v2, [Landroid/net/NetworkConfig;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    .line 398
    .local v32, raStrings:[Ljava/lang/String;
    move-object/from16 v8, v32

    .local v8, arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v19, v0

    .local v19, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_2
    move/from16 v0, v19

    if-ge v15, v0, :cond_5

    aget-object v31, v8, v15

    .line 399
    .local v31, raString:Ljava/lang/String;
    new-instance v30, Lcom/android/server/ConnectivityService$RadioAttributes;

    invoke-direct/range {v30 .. v31}, Lcom/android/server/ConnectivityService$RadioAttributes;-><init>(Ljava/lang/String;)V

    .line 400
    .local v30, r:Lcom/android/server/ConnectivityService$RadioAttributes;
    move-object/from16 v0, v30

    iget v2, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    const/16 v3, 0xd

    if-le v2, v3, :cond_3

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 398
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 365
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v15           #i$:I
    .end local v19           #len$:I
    .end local v28           #powerManager:Landroid/os/PowerManager;
    .end local v30           #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v31           #raString:Ljava/lang/String;
    .end local v32           #raStrings:[Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 366
    .local v12, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting defaultDns using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 375
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v12

    .line 377
    .local v12, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to register INetworkPolicyListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 404
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v15       #i$:I
    .restart local v19       #len$:I
    .restart local v28       #powerManager:Landroid/os/PowerManager;
    .restart local v30       #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .restart local v31       #raString:Ljava/lang/String;
    .restart local v32       #raStrings:[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 409
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aput-object v30, v2, v3

    goto :goto_3

    .line 412
    .end local v30           #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v31           #raString:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 414
    .local v23, naStrings:[Ljava/lang/String;
    move-object/from16 v8, v23

    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v15, v0, :cond_9

    aget-object v22, v8, v15

    .line 416
    .local v22, naString:Ljava/lang/String;
    :try_start_2
    new-instance v20, Landroid/net/NetworkConfig;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 417
    .local v20, n:Landroid/net/NetworkConfig;
    move-object/from16 v0, v20

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v3, 0xd

    if-le v2, v3, :cond_6

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 414
    .end local v20           #n:Landroid/net/NetworkConfig;
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 422
    .restart local v20       #n:Landroid/net/NetworkConfig;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_7

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 434
    .end local v20           #n:Landroid/net/NetworkConfig;
    :catch_2
    move-exception v2

    goto :goto_5

    .line 427
    .restart local v20       #n:Landroid/net/NetworkConfig;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    aget-object v2, v2, v3

    if-nez v2, :cond_8

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to use undefined radio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 432
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput-object v20, v2, v3

    .line 433
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 439
    .end local v20           #n:Landroid/net/NetworkConfig;
    .end local v22           #naString:Ljava/lang/String;
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 440
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v29

    .line 442
    .local v29, protectedNetworks:[I
    move-object/from16 v8, v29

    .local v8, arr$:[I
    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_6
    move/from16 v0, v19

    if-ge v15, v0, :cond_b

    aget v27, v8, v15

    .line 443
    .local v27, p:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v27

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 446
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring protectedNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_7

    .line 451
    .end local v27           #p:I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .line 453
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v17, v2, -0x1

    .line 454
    .local v17, insertionPoint:I
    const/4 v10, 0x0

    .line 455
    .local v10, currentLowest:I
    const/16 v26, 0x0

    .line 456
    .end local v8           #arr$:[I
    .local v26, nextLowest:I
    :goto_8
    const/4 v2, -0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_11

    .line 457
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .local v8, arr$:[Landroid/net/NetworkConfig;
    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    move/from16 v18, v17

    .end local v17           #insertionPoint:I
    .local v18, insertionPoint:I
    :goto_9
    move/from16 v0, v19

    if-ge v15, v0, :cond_10

    aget-object v21, v8, v15

    .line 458
    .local v21, na:Landroid/net/NetworkConfig;
    if-nez v21, :cond_c

    move/from16 v17, v18

    .line 457
    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    :goto_a
    add-int/lit8 v15, v15, 0x1

    move/from16 v18, v17

    .end local v17           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    goto :goto_9

    .line 459
    :cond_c
    move-object/from16 v0, v21

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-ge v2, v10, :cond_d

    move/from16 v17, v18

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    goto :goto_a

    .line 460
    .end local v17           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    :cond_d
    move-object/from16 v0, v21

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-le v2, v10, :cond_f

    .line 461
    move-object/from16 v0, v21

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v0, v26

    if-lt v2, v0, :cond_e

    if-nez v26, :cond_19

    .line 462
    :cond_e
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v26, v0

    move/from16 v17, v18

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    goto :goto_a

    .line 466
    .end local v17           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    add-int/lit8 v17, v18, -0x1

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    move-object/from16 v0, v21

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput v3, v2, v18

    goto :goto_a

    .line 468
    .end local v17           #insertionPoint:I
    .end local v21           #na:Landroid/net/NetworkConfig;
    .restart local v18       #insertionPoint:I
    :cond_10
    move/from16 v10, v26

    .line 469
    const/16 v26, 0x0

    move/from16 v17, v18

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    goto :goto_8

    .line 473
    .end local v8           #arr$:[Landroid/net/NetworkConfig;
    :cond_11
    const/16 v2, 0xe

    new-array v2, v2, [Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    .line 474
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v8, arr$:[I
    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_b
    move/from16 v0, v19

    if-ge v15, v0, :cond_12

    aget v14, v8, v15

    .line 475
    .local v14, i:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v14

    .line 474
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 478
    .end local v14           #i:I
    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    .line 480
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 482
    const-string v2, "cm.test.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 491
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_d
    move/from16 v0, v19

    if-ge v15, v0, :cond_16

    aget v25, v8, v15

    .line 492
    .local v25, netType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v25

    iget v2, v2, Landroid/net/NetworkConfig;->radio:I

    packed-switch v2, :pswitch_data_0

    .line 523
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to create a DataStateTracker for an unknown radio type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v25

    iget v3, v3, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 491
    :cond_13
    :goto_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 482
    .end local v25           #netType:I
    :cond_14
    const/4 v2, 0x0

    goto :goto_c

    .line 494
    .restart local v25       #netType:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v3, Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v25

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move/from16 v0, v25

    invoke-direct {v3, v0, v5}, Landroid/net/wifi/WifiStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v25

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 527
    :cond_15
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    const/4 v3, 0x0

    aput-object v3, v2, v25

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v25

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_e

    .line 499
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v3, Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v25

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move/from16 v0, v25

    invoke-direct {v3, v0, v5}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v25

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_f

    .line 504
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v3, Landroid/net/DummyDataStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v25

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move/from16 v0, v25

    invoke-direct {v3, v0, v5}, Landroid/net/DummyDataStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v25

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_f

    .line 509
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v3

    aput-object v3, v2, v25

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_f

    .line 513
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->makeWimaxStateTracker()Landroid/net/NetworkStateTracker;

    move-result-object v3

    aput-object v3, v2, v25

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    if-eqz v2, :cond_15

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_f

    .line 519
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-static {}, Landroid/net/EthernetDataTracker;->getInstance()Landroid/net/EthernetDataTracker;

    move-result-object v3

    aput-object v3, v2, v25

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_f

    .line 533
    .end local v25           #netType:I
    :cond_16
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 534
    .local v9, b:Landroid/os/IBinder;
    invoke-static {v9}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 536
    .local v4, nmService:Landroid/os/INetworkManagementService;
    new-instance v2, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceTypes()[I

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 542
    new-instance v2, Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/ConnectivityService$VpnCallback;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    invoke-direct {v2, v3, v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 545
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {v4, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-interface {v4, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 552
    :goto_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    .line 555
    new-instance v2, Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6d

    invoke-direct {v2, v3, v5}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 558
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->loadGlobalProxy()V

    .line 559
    return-void

    .line 537
    :cond_18
    const/4 v2, 0x0

    goto :goto_10

    .line 547
    :catch_3
    move-exception v12

    .line 548
    .restart local v12       #e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering observer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_11

    .end local v4           #nmService:Landroid/os/INetworkManagementService;
    .end local v9           #b:Landroid/os/IBinder;
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v17           #insertionPoint:I
    .local v8, arr$:[Landroid/net/NetworkConfig;
    .restart local v18       #insertionPoint:I
    .restart local v21       #na:Landroid/net/NetworkConfig;
    :cond_19
    move/from16 v17, v18

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    goto/16 :goto_a

    .line 492
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ConnectivityService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method private addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 7
    .parameter "p"
    .parameter "r"
    .parameter "toDefaultTable"

    .prologue
    .line 1326
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    move-result v0

    return v0
.end method

.method private addRouteDelayed(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZI)Z
    .locals 3
    .parameter "p"
    .parameter "r"
    .parameter "toDefaultTable"
    .parameter "ms"

    .prologue
    .line 1331
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 1333
    .local v0, nIface:Ljava/net/NetworkInterface;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not up yet, delay by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1336
    invoke-direct {p0, p4}, Lcom/android/server/ConnectivityService;->goToSleep(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    .end local v0           #nIface:Ljava/net/NetworkInterface;
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    move-result v1

    return v1

    .line 1338
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "lp"
    .parameter "addr"

    .prologue
    const/4 v0, 0x1

    .line 1347
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZ)Z

    move-result v0

    return v0
.end method

.method private bumpDns()V
    .locals 6

    .prologue
    .line 2278
    const-string v3, "net.dnschange"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2279
    .local v2, propVal:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2280
    .local v1, n:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2282
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2285
    :cond_0
    :goto_0
    const-string v3, "net.dnschange"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2290
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2294
    const/high16 v3, 0x800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2295
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2296
    return-void

    .line 2283
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2989
    .local p0, value:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    .line 2990
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2992
    :cond_0
    return-object p0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    return-void
.end method

.method private enforcePreference()V
    .locals 3

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    :cond_0
    return-void

    .line 703
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    const/4 v0, 0x0

    .local v0, t:I
    :goto_0
    const/16 v1, 0xd

    if-gt v0, v1, :cond_0

    .line 707
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tearing down "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in enforcePreference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 713
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 706
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    return-void
.end method

.method private enforceTetherChangePermission()V
    .locals 3

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    return-void
.end method

.method private getConnectivityChangeDelay()I
    .locals 4

    .prologue
    .line 670
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 673
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "conn.connectivity_change_delay"

    const/16 v3, 0xbb8

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 676
    .local v1, defaultDelay:I
    const-string v2, "connectivity_change_delay"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;
    .locals 4
    .parameter "tracker"
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 755
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 756
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 759
    .end local v0           #info:Landroid/net/NetworkInfo;
    .local v1, info:Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 761
    .end local v1           #info:Landroid/net/NetworkInfo;
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_0
    return-object v0
.end method

.method private getNetworkInfo(II)Landroid/net/NetworkInfo;
    .locals 3
    .parameter "networkType"
    .parameter "uid"

    .prologue
    .line 792
    const/4 v0, 0x0

    .line 793
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v2, p1

    .line 795
    .local v1, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v1, :cond_0

    .line 796
    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 799
    .end local v1           #tracker:Landroid/net/NetworkStateTracker;
    :cond_0
    return-object v0
.end method

.method private getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    .locals 5
    .parameter "networkType"

    .prologue
    .line 866
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 868
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 869
    new-instance v1, Landroid/net/NetworkState;

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    .line 873
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPersistedNetworkPreference()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 681
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 683
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "network_preference"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 685
    .local v1, networkPrefSetting:I
    if-eq v1, v3, :cond_0

    .line 689
    .end local v1           #networkPrefSetting:I
    :goto_0
    return v1

    .restart local v1       #networkPrefSetting:I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getRestoreDefaultNetworkDelay(I)I
    .locals 3
    .parameter "networkType"

    .prologue
    .line 2385
    const-string v2, "android.telephony.apn-restore"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2387
    .local v0, restoreDefaultNetworkDelayStr:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2390
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2401
    :cond_0
    :goto_0
    return v1

    .line 2391
    :catch_0
    move-exception v2

    .line 2395
    :cond_1
    const v1, 0xea60

    .line 2397
    .local v1, ret:I
    const/16 v2, 0xd

    if-gt p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 2399
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, p1

    iget v1, v2, Landroid/net/NetworkConfig;->restoreTime:I

    goto :goto_0
.end method

.method private goToSleep(I)V
    .locals 2
    .parameter "ms"

    .prologue
    .line 2939
    if-lez p1, :cond_0

    .line 2941
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2944
    :cond_0
    :goto_0
    return-void

    .line 2942
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 2874
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2875
    const/4 p1, 0x0

    .line 2877
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2878
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 2886
    :goto_0
    return-void

    .line 2879
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-ne v0, p1, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 2885
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2880
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 2882
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v0, :cond_3

    .line 2883
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    .line 2885
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleConnect(Landroid/net/NetworkInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    const/4 v10, 0x0

    .line 1887
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 1890
    .local v4, type:I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    .line 1891
    .local v1, isFailover:Z
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v5, v4

    .line 1895
    .local v3, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1896
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v4, :cond_4

    .line 1897
    iget v5, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v5, v5, v6

    iget v5, v5, Landroid/net/NetworkConfig;->priority:I

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v6, v6, v4

    iget v6, v6, Landroid/net/NetworkConfig;->priority:I

    if-gt v5, v6, :cond_1

    :cond_0
    iget v5, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v5, v6, :cond_3

    .line 1906
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 1958
    :cond_2
    :goto_0
    return-void

    .line 1910
    :cond_3
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v2, v5, v6

    .line 1913
    .local v2, otherNet:Landroid/net/NetworkStateTracker;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Policy requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " teardown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1916
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1917
    const-string v5, "Network declined teardown request"

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1918
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto :goto_0

    .line 1923
    .end local v2           #otherNet:Landroid/net/NetworkStateTracker;
    :cond_4
    monitor-enter p0

    .line 1927
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1928
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x6c

    iget v8, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1933
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1934
    iput v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 1938
    iput v10, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1939
    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 1940
    iput-boolean v10, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 1944
    :cond_6
    invoke-interface {v3, v10}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1945
    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 1946
    invoke-direct {p0, v4, v10}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 1947
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 1950
    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1951
    .local v0, iface:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1953
    :try_start_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1954
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 1933
    .end local v0           #iface:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1792
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-interface {v6, v8}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1794
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    .line 1795
    .local v3, reason:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 1798
    .local v0, extraInfo:Ljava/lang/String;
    if-nez v3, :cond_6

    .line 1799
    const-string v4, "."

    .line 1803
    .local v4, reasonText:Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1805
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1806
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "networkInfo"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1807
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1808
    const-string v6, "noConnectivity"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1810
    :cond_0
    if-eqz v3, :cond_1

    .line 1811
    const-string v6, "reason"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1813
    :cond_1
    if-eqz v0, :cond_2

    .line 1814
    const-string v6, "extraInfo"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1816
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1817
    const-string v6, "isFailover"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1818
    invoke-virtual {p1, v8}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1821
    :cond_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1822
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 1823
    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v10, :cond_7

    .line 1824
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1825
    .local v5, switchTo:Landroid/net/NetworkInfo;
    const-string v6, "otherNetwork"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1832
    .end local v5           #switchTo:Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    const-string v6, "inetCondition"

    iget v7, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1834
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1835
    .local v1, immediateIntent:Landroid/content/Intent;
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1836
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1837
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1842
    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v10, :cond_5

    .line 1843
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 1845
    :cond_5
    return-void

    .line 1801
    .end local v1           #immediateIntent:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #reasonText:Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #reasonText:Ljava/lang/String;
    goto/16 :goto_0

    .line 1827
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_7
    iput v8, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1828
    const-string v6, "noConnectivity"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleConnectivityChange(IZ)V
    .locals 13
    .parameter "netType"
    .parameter "doReset"

    .prologue
    const/4 v10, 0x0

    .line 1967
    if-eqz p2, :cond_3

    const/4 v9, 0x3

    .line 1973
    .local v9, resetMask:I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 1975
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aget-object v1, v11, p1

    .line 1976
    .local v1, curLp:Landroid/net/LinkProperties;
    const/4 v7, 0x0

    .line 1978
    .local v7, newLp:Landroid/net/LinkProperties;
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v11, v11, p1

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1979
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v11, v11, p1

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 1987
    if-eqz v1, :cond_5

    .line 1988
    invoke-virtual {v1, v7}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1989
    invoke-virtual {v1, v7}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v0

    .line 1990
    .local v0, car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    iget-object v11, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-eqz v11, :cond_b

    .line 1991
    :cond_0
    iget-object v11, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 1992
    .local v5, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet4Address;

    if-eqz v11, :cond_2

    .line 1993
    or-int/lit8 v9, v9, 0x1

    .line 1995
    :cond_2
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet6Address;

    if-eqz v11, :cond_1

    .line 1996
    or-int/lit8 v9, v9, 0x2

    goto :goto_1

    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v1           #curLp:Landroid/net/LinkProperties;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #linkAddr:Landroid/net/LinkAddress;
    .end local v7           #newLp:Landroid/net/LinkProperties;
    .end local v9           #resetMask:I
    :cond_3
    move v9, v10

    .line 1967
    goto :goto_0

    .line 2000
    .restart local v0       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .restart local v1       #curLp:Landroid/net/LinkProperties;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v7       #newLp:Landroid/net/LinkProperties;
    .restart local v9       #resetMask:I
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: addresses changed linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n   car="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2020
    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2021
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V

    .line 2031
    :cond_6
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aput-object v7, v11, p1

    .line 2032
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v11

    invoke-direct {p0, v7, v1, v11}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Z)Z

    move-result v8

    .line 2034
    .local v8, resetDns:Z
    if-nez v9, :cond_7

    if-eqz v8, :cond_9

    .line 2035
    :cond_7
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v11, v11, p1

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    .line 2036
    .local v6, linkProperties:Landroid/net/LinkProperties;
    if-eqz v6, :cond_9

    .line 2037
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 2038
    .local v4, iface:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 2039
    if-eqz v9, :cond_8

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v11, v11, p1

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v11, v12, :cond_8

    .line 2043
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetConnections("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2044
    invoke-static {v4, v9}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 2048
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_8

    .line 2049
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v11, v4, v10}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 2052
    :cond_8
    if-eqz v8, :cond_9

    .line 2055
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v10, v4}, Landroid/os/INetworkManagementService;->flushInterfaceDnsCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2068
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #linkProperties:Landroid/net/LinkProperties;
    :cond_9
    :goto_3
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v10, v10, p1

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    const-string v11, "linkPropertiesChanged"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2070
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2071
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering;->handleTetherIfaceChange()V

    .line 2074
    :cond_a
    return-void

    .line 2006
    .end local v8           #resetDns:Z
    .restart local v0       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: address are the same reset per doReset linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2012
    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_c
    const/4 v9, 0x3

    .line 2014
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: interface not not equivalent reset both linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2056
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #linkProperties:Landroid/net/LinkProperties;
    .restart local v8       #resetDns:Z
    :catch_0
    move-exception v2

    .line 2058
    .local v2, e:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception resetting dns cache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private handleDeprecatedGlobalHttpProxy()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2889
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "http_proxy"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2891
    .local v3, proxy:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2892
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2893
    .local v0, data:[Ljava/lang/String;
    aget-object v4, v0, v8

    .line 2894
    .local v4, proxyHost:Ljava/lang/String;
    const/16 v5, 0x1f90

    .line 2895
    .local v5, proxyPort:I
    array-length v6, v0

    if-le v6, v9, :cond_0

    .line 2897
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2902
    :cond_0
    new-instance v2, Landroid/net/ProxyProperties;

    aget-object v6, v0, v8

    const-string v7, ""

    invoke-direct {v2, v6, v5, v7}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2903
    .local v2, p:Landroid/net/ProxyProperties;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 2905
    .end local v0           #data:[Ljava/lang/String;
    .end local v2           #p:Landroid/net/ProxyProperties;
    .end local v4           #proxyHost:Ljava/lang/String;
    .end local v5           #proxyPort:I
    :cond_1
    :goto_0
    return-void

    .line 2898
    .restart local v0       #data:[Ljava/lang/String;
    .restart local v4       #proxyHost:Ljava/lang/String;
    .restart local v5       #proxyPort:I
    :catch_0
    move-exception v1

    .line 2899
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .locals 21
    .parameter "info"

    .prologue
    .line 1616
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v17

    .line 1618
    .local v17, prevNetType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v19, v0

    aget-object v16, v19, v17

    .line 1627
    .local v16, pids:Ljava/util/List;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_0

    .line 1628
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 1632
    .local v15, pid:Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 1627
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1636
    .end local v5           #i:I
    .end local v15           #pid:Ljava/lang/Integer;
    .end local v16           #pids:Ljava/util/List;
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v19, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1637
    .local v8, intent:Landroid/content/Intent;
    const-string v19, "networkInfo"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1638
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1639
    const-string v19, "isFailover"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1640
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1642
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 1643
    const-string v19, "reason"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1645
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 1646
    const-string v19, "extraInfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1651
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 1652
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-interface/range {v19 .. v19}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    .line 1654
    .local v18, switchTo:Landroid/net/NetworkInfo;
    const-string v19, "otherNetwork"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1660
    .end local v18           #switchTo:Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    const-string v19, "inetCondition"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1663
    const/4 v4, 0x1

    .line 1664
    .local v4, doReset:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    invoke-interface/range {v19 .. v19}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v11

    .line 1665
    .local v11, linkProperties:Landroid/net/LinkProperties;
    if-eqz v11, :cond_8

    .line 1666
    invoke-virtual {v11}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v14

    .line 1667
    .local v14, oldIface:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 1668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v3, arr$:[Landroid/net/NetworkStateTracker;
    array-length v10, v3

    .local v10, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v10, :cond_8

    aget-object v13, v3, v6

    .line 1669
    .local v13, networkStateTracker:Landroid/net/NetworkStateTracker;
    if-nez v13, :cond_7

    .line 1668
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1656
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v4           #doReset:Z
    .end local v6           #i$:I
    .end local v10           #len$:I
    .end local v11           #linkProperties:Landroid/net/LinkProperties;
    .end local v13           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v14           #oldIface:Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1657
    const-string v19, "noConnectivity"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1670
    .restart local v3       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v4       #doReset:Z
    .restart local v6       #i$:I
    .restart local v10       #len$:I
    .restart local v11       #linkProperties:Landroid/net/LinkProperties;
    .restart local v13       #networkStateTracker:Landroid/net/NetworkStateTracker;
    .restart local v14       #oldIface:Ljava/lang/String;
    :cond_7
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 1671
    .local v12, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 1672
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 1673
    .local v9, l:Landroid/net/LinkProperties;
    if-eqz v9, :cond_5

    .line 1674
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1675
    const/4 v4, 0x0

    .line 1684
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v6           #i$:I
    .end local v9           #l:Landroid/net/LinkProperties;
    .end local v10           #len$:I
    .end local v12           #networkInfo:Landroid/net/NetworkInfo;
    .end local v13           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v14           #oldIface:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 1686
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1687
    .local v7, immediateIntent:Landroid/content/Intent;
    const-string v19, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1688
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1689
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 1694
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-interface/range {v19 .. v19}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 1698
    :cond_9
    return-void
.end method

.method private handleDnsConfigurationChange(I)V
    .locals 12
    .parameter "netType"

    .prologue
    .line 2353
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v9, p1

    .line 2354
    .local v4, nt:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2355
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    .line 2356
    .local v5, p:Landroid/net/LinkProperties;
    if-nez v5, :cond_1

    .line 2382
    .end local v5           #p:Landroid/net/LinkProperties;
    :cond_0
    :goto_0
    return-void

    .line 2357
    .restart local v5       #p:Landroid/net/LinkProperties;
    :cond_1
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    .line 2358
    .local v1, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .line 2359
    .local v0, changed:Z
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2360
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 2361
    .local v3, network:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2362
    :try_start_0
    iget-boolean v9, p0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    if-nez v9, :cond_2

    .line 2363
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    invoke-direct {p0, v3, v9, v1, v11}, Lcom/android/server/ConnectivityService;->updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    .line 2365
    :cond_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2380
    .end local v3           #network:Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    goto :goto_0

    .line 2365
    .restart local v3       #network:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 2368
    .end local v3           #network:Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2374
    :goto_1
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v7, v9, p1

    .line 2375
    .local v7, pids:Ljava/util/List;
    const/4 v8, 0x0

    .local v8, y:I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 2376
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2377
    .local v6, pid:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v1, v9}, Lcom/android/server/ConnectivityService;->writePidDns(Ljava/util/Collection;I)Z

    move-result v0

    .line 2375
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2370
    .end local v6           #pid:Ljava/lang/Integer;
    .end local v7           #pids:Ljava/util/List;
    .end local v8           #y:I
    :catch_0
    move-exception v2

    .line 2371
    .local v2, e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception setting dns servers: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleInetConditionChange(II)V
    .locals 6
    .parameter "netType"
    .parameter "condition"

    .prologue
    .line 2748
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2749
    const-string v1, "handleInetConditionChange: no active default network - ignore"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2781
    :cond_0
    :goto_0
    return-void

    .line 2752
    :cond_1
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v1, p1, :cond_2

    .line 2753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionChange: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2762
    :cond_2
    iput p2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 2764
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    if-nez v1, :cond_0

    .line 2767
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_3

    .line 2768
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_up_delay"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2774
    .local v0, delay:I
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 2775
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2771
    .end local v0           #delay:I
    :cond_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_down_delay"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delay:I
    goto :goto_1
.end method

.method private handleInetConditionHoldEnd(II)V
    .locals 3
    .parameter "netType"
    .parameter "sequence"

    .prologue
    .line 2785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionHoldEnd: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", published condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2789
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 2791
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2792
    const-string v1, "handleInetConditionHoldEnd: no active default network - ignoring"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2813
    :goto_0
    return-void

    .line 2795
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    .line 2796
    const-string v1, "handleInetConditionHoldEnd: event hold for obsolete network - ignoring"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2806
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2807
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2808
    const-string v1, "handleInetConditionHoldEnd: default network not connected - ignoring"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2811
    :cond_2
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2812
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleSetDependencyMet(IZ)V
    .locals 2
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetDependencyMet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1469
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setDependencyMet(Z)V

    .line 1471
    :cond_0
    return-void
.end method

.method private handleSetMobileData(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 1541
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 1545
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 1547
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    .line 1551
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v3

    invoke-interface {v1, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 1553
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1555
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1556
    return-void
.end method

.method private handleSetNetworkPreference(I)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 655
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v1, p1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 660
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "network_preference"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 661
    monitor-enter p0

    .line 662
    :try_start_0
    iput p1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 663
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforcePreference()V

    .line 667
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 663
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleSetPolicyDataEnable(IZ)V
    .locals 2
    .parameter "networkType"
    .parameter "enabled"

    .prologue
    .line 1568
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1569
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1570
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1571
    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setPolicyDataEnable(Z)V

    .line 1574
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :cond_0
    return-void
.end method

.method private isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z
    .locals 7
    .parameter "tracker"
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 732
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, iface:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 737
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 738
    .local v1, networkCostly:Z
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 739
    .local v2, uidRules:I
    monitor-exit v4

    .line 741
    if-eqz v1, :cond_0

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 742
    const/4 v3, 0x1

    .line 746
    :cond_0
    return v3

    .line 739
    .end local v1           #networkCostly:Z
    .end local v2           #uidRules:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isNetworkMeteredUnchecked(I)Z
    .locals 2
    .parameter "networkType"

    .prologue
    .line 907
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 908
    .local v0, state:Landroid/net/NetworkState;
    if-eqz v0, :cond_0

    .line 910
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->isNetworkMetered(Landroid/net/NetworkState;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 914
    :goto_0
    return v1

    .line 911
    :catch_0
    move-exception v1

    .line 914
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadGlobalProxy()V
    .locals 7

    .prologue
    .line 2854
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2855
    .local v4, res:Landroid/content/ContentResolver;
    const-string v5, "global_http_proxy_host"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2856
    .local v1, host:Ljava/lang/String;
    const-string v5, "global_http_proxy_port"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2857
    .local v2, port:I
    const-string v5, "global_http_proxy_exclusion_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2859
    .local v0, exclList:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2860
    new-instance v3, Landroid/net/ProxyProperties;

    invoke-direct {v3, v1, v2, v0}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2861
    .local v3, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2862
    :try_start_0
    iput-object v3, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 2863
    monitor-exit v6

    .line 2865
    .end local v3           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_0
    return-void

    .line 2863
    .restart local v3       #proxyProperties:Landroid/net/ProxyProperties;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 2947
    const-string v0, "ConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 2951
    const-string v0, "ConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    return-void
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "info"
    .parameter "bcastType"

    .prologue
    .line 1762
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1763
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "networkInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1764
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1765
    const-string v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1766
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1768
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1769
    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1771
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1772
    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1775
    :cond_2
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1776
    return-object v0
.end method

.method private makeWimaxStateTracker()Landroid/net/NetworkStateTracker;
    .locals 20

    .prologue
    .line 563
    const/4 v13, 0x0

    .line 564
    .local v13, wimaxStateTrackerClass:Ljava/lang/Class;
    const/4 v10, 0x0

    .line 572
    .local v10, wimaxServiceClass:Ljava/lang/Class;
    const/4 v12, 0x0

    .line 574
    .local v12, wimaxStateTracker:Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1110039

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 577
    .local v3, isWimaxEnabled:Z
    if-eqz v3, :cond_0

    .line 579
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040028

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 581
    .local v6, wimaxJarLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040029

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 583
    .local v7, wimaxLibLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x104002a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 585
    .local v9, wimaxManagerClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x104002b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 587
    .local v11, wimaxServiceClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x104002c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 590
    .local v14, wimaxStateTrackerClassName:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "wimaxJarLocation: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 591
    new-instance v5, Ldalvik/system/DexClassLoader;

    new-instance v17, Landroid/content/ContextWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v6, v0, v7, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 596
    .local v5, wimaxClassLoader:Ldalvik/system/DexClassLoader;
    :try_start_1
    invoke-virtual {v5, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 597
    .local v8, wimaxManagerClass:Ljava/lang/Class;
    invoke-virtual {v5, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 598
    invoke-virtual {v5, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 609
    :try_start_2
    const-string v17, "Starting Wimax Service... "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 611
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-class v19, Landroid/os/Handler;

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 613
    .local v16, wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/net/NetworkStateTracker;

    move-object v12, v0

    .line 616
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 618
    .local v15, wmxSrvConst:Ljava/lang/reflect/Constructor;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 619
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v12, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 620
    .local v4, svcInvoker:Landroid/os/IBinder;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 622
    const-string v17, "WiMax"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v12

    .line 633
    .end local v4           #svcInvoker:Landroid/os/IBinder;
    .end local v5           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v6           #wimaxJarLocation:Ljava/lang/String;
    .end local v7           #wimaxLibLocation:Ljava/lang/String;
    .end local v8           #wimaxManagerClass:Ljava/lang/Class;
    .end local v9           #wimaxManagerClassName:Ljava/lang/String;
    .end local v11           #wimaxServiceClassName:Ljava/lang/String;
    .end local v14           #wimaxStateTrackerClassName:Ljava/lang/String;
    .end local v15           #wmxSrvConst:Ljava/lang/reflect/Constructor;
    .end local v16           #wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v17

    .line 599
    .restart local v5       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v6       #wimaxJarLocation:Ljava/lang/String;
    .restart local v7       #wimaxLibLocation:Ljava/lang/String;
    .restart local v9       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v11       #wimaxServiceClassName:Ljava/lang/String;
    .restart local v14       #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 600
    .local v2, ex:Ljava/lang/ClassNotFoundException;
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception finding Wimax classes: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 601
    const/16 v17, 0x0

    goto :goto_0

    .line 603
    .end local v2           #ex:Ljava/lang/ClassNotFoundException;
    .end local v5           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v6           #wimaxJarLocation:Ljava/lang/String;
    .end local v7           #wimaxLibLocation:Ljava/lang/String;
    .end local v9           #wimaxManagerClassName:Ljava/lang/String;
    .end local v11           #wimaxServiceClassName:Ljava/lang/String;
    .end local v14           #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 604
    .local v2, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v17, "Wimax Resources does not exist!!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 605
    const/16 v17, 0x0

    goto :goto_0

    .line 624
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v5       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v6       #wimaxJarLocation:Ljava/lang/String;
    .restart local v7       #wimaxLibLocation:Ljava/lang/String;
    .restart local v8       #wimaxManagerClass:Ljava/lang/Class;
    .restart local v9       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v11       #wimaxServiceClassName:Ljava/lang/String;
    .restart local v14       #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 625
    .local v2, ex:Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception creating Wimax classes: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 626
    const/16 v17, 0x0

    goto :goto_0

    .line 629
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v6           #wimaxJarLocation:Ljava/lang/String;
    .end local v7           #wimaxLibLocation:Ljava/lang/String;
    .end local v8           #wimaxManagerClass:Ljava/lang/Class;
    .end local v9           #wimaxManagerClassName:Ljava/lang/String;
    .end local v11           #wimaxServiceClassName:Ljava/lang/String;
    .end local v14           #wimaxStateTrackerClassName:Ljava/lang/String;
    :cond_0
    const-string v17, "Wimax is not enabled or not added to the network attributes!!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 630
    const/16 v17, 0x0

    goto :goto_0
.end method

.method private modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z
    .locals 9
    .parameter "ifaceName"
    .parameter "lp"
    .parameter "r"
    .parameter "cycleCount"
    .parameter "doAdd"
    .parameter "toDefaultTable"

    .prologue
    const/4 v8, 0x0

    .line 1374
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1375
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyRoute got unexpected null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    move v0, v8

    .line 1440
    :goto_0
    return v0

    .line 1379
    :cond_1
    const/16 v0, 0xa

    if-le p4, v0, :cond_2

    .line 1380
    const-string v0, "Error modifying route - too much recursion"

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    move v0, v8

    .line 1381
    goto :goto_0

    .line 1384
    :cond_2
    invoke-virtual {p3}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1385
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1386
    .local v3, bestRoute:Landroid/net/RouteInfo;
    if-eqz v3, :cond_3

    .line 1387
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1389
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1395
    :goto_1
    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    .line 1398
    .end local v3           #bestRoute:Landroid/net/RouteInfo;
    :cond_3
    if-eqz p5, :cond_7

    .line 1401
    if-eqz p6, :cond_6

    .line 1402
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1403
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    :cond_4
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1393
    .restart local v3       #bestRoute:Landroid/net/RouteInfo;
    :cond_5
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    goto :goto_1

    .line 1405
    .end local v3           #bestRoute:Landroid/net/RouteInfo;
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1407
    :catch_0
    move-exception v7

    .line 1409
    .local v7, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception trying to add a route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    move v0, v8

    .line 1410
    goto :goto_0

    .line 1415
    .end local v7           #e:Ljava/lang/Exception;
    :cond_7
    if-eqz p6, :cond_8

    .line 1416
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1417
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1420
    :try_start_2
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1421
    :catch_1
    move-exception v7

    .restart local v7       #e:Ljava/lang/Exception;
    move v0, v8

    .line 1424
    goto/16 :goto_0

    .line 1432
    .end local v7           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1433
    :catch_2
    move-exception v7

    .restart local v7       #e:Ljava/lang/Exception;
    move v0, v8

    .line 1436
    goto/16 :goto_0
.end method

.method private modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZ)Z
    .locals 7
    .parameter "lp"
    .parameter "addr"
    .parameter "doAdd"
    .parameter "toDefaultTable"

    .prologue
    .line 1356
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1357
    .local v3, bestRoute:Landroid/net/RouteInfo;
    if-nez v3, :cond_0

    .line 1358
    invoke-static {p2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1369
    :goto_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    move-result v0

    return v0

    .line 1360
    :cond_0
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1362
    invoke-static {p2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    goto :goto_0

    .line 1366
    :cond_1
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    goto :goto_0
.end method

.method private reassessPidDns(IZ)V
    .locals 13
    .parameter "myPid"
    .parameter "doBump"

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_4

    aget v2, v0, v3

    .line 2223
    .local v2, i:I
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v11, v11, v2

    invoke-virtual {v11}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2222
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2226
    :cond_1
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v11, v2

    .line 2227
    .local v6, nt:Landroid/net/NetworkStateTracker;
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2229
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 2230
    .local v7, p:Landroid/net/LinkProperties;
    if-eqz v7, :cond_0

    .line 2231
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v9, v11, v2

    .line 2232
    .local v9, pids:Ljava/util/List;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 2233
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2234
    .local v8, pid:Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, p1, :cond_3

    .line 2235
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    .line 2236
    .local v1, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->writePidDns(Ljava/util/Collection;I)Z

    .line 2237
    if-eqz p2, :cond_2

    .line 2238
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    .line 2252
    .end local v1           #dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #p:Landroid/net/LinkProperties;
    .end local v8           #pid:Ljava/lang/Integer;
    .end local v9           #pids:Ljava/util/List;
    :cond_2
    :goto_2
    return-void

    .line 2232
    .restart local v4       #j:I
    .restart local v6       #nt:Landroid/net/NetworkStateTracker;
    .restart local v7       #p:Landroid/net/LinkProperties;
    .restart local v8       #pid:Ljava/lang/Integer;
    .restart local v9       #pids:Ljava/util/List;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2246
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #p:Landroid/net/LinkProperties;
    .end local v8           #pid:Ljava/lang/Integer;
    .end local v9           #pids:Ljava/util/List;
    :cond_4
    const/4 v2, 0x1

    .line 2247
    .restart local v2       #i:I
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2248
    .local v10, prop:Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5

    .line 2249
    if-eqz p2, :cond_2

    .line 2250
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    goto :goto_2

    .line 2254
    :cond_5
    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 7
    .parameter "p"
    .parameter "r"
    .parameter "toDefaultTable"

    .prologue
    const/4 v4, 0x0

    .line 1343
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    move-result v0

    return v0
.end method

.method private removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 2
    .parameter "lp"
    .parameter "addr"

    .prologue
    .line 1351
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZ)Z

    move-result v0

    return v0
.end method

.method private sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1748
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1749
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1750
    return-void
.end method

.method private sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    .locals 1
    .parameter "info"
    .parameter "delayMs"

    .prologue
    .line 1753
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1754
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    .line 1755
    return-void
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 1
    .parameter "info"
    .parameter "bcastType"

    .prologue
    .line 1780
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1781
    return-void
.end method

.method private sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V
    .locals 1
    .parameter "info"
    .parameter "bcastType"
    .parameter "delayMs"

    .prologue
    .line 1784
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 1785
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1758
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1759
    return-void
.end method

.method private sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    .locals 4
    .parameter "proxy"

    .prologue
    .line 2908
    if-nez p1, :cond_0

    new-instance p1, Landroid/net/ProxyProperties;

    .end local p1
    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {p1, v1, v2, v3}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2909
    .restart local p1
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending Proxy Broadcast for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2910
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2911
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2913
    const-string v1, "proxy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2914
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2915
    return-void
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1848
    monitor-enter p0

    .line 1849
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 1850
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1852
    :cond_0
    const/high16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1857
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1858
    monitor-exit p0

    .line 1859
    return-void

    .line 1858
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendStickyBroadcastDelayed(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "delayMs"

    .prologue
    .line 1862
    if-gtz p2, :cond_0

    .line 1863
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1872
    :goto_0
    return-void

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x70

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setBufferSize(Ljava/lang/String;)V
    .locals 5
    .parameter "bufferSizes"

    .prologue
    .line 2196
    :try_start_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2198
    .local v2, values:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 2199
    const-string v1, "/sys/kernel/ipv4/tcp_"

    .line 2200
    .local v1, prefix:Ljava/lang/String;
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_0
    return-void

    .line 2207
    .restart local v2       #values:[Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid buffersize string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2209
    .end local v2           #values:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2210
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set tcp buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 12
    .parameter "u"
    .parameter "ignoreDups"

    .prologue
    .line 1171
    iget v4, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 1172
    .local v4, networkType:I
    iget-object v2, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 1173
    .local v2, feature:Ljava/lang/String;
    iget v5, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 1174
    .local v5, pid:I
    iget v7, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 1176
    .local v7, uid:I
    const/4 v6, 0x0

    .line 1177
    .local v6, tracker:Landroid/net/NetworkStateTracker;
    const/4 v0, 0x0

    .line 1183
    .local v0, callTeardown:Z
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1185
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopUsingNetworkFeature: net "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", net is invalid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1188
    const/4 v10, -0x1

    .line 1258
    :goto_0
    return v10

    .line 1193
    :cond_0
    monitor-enter p0

    .line 1195
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1200
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1249
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1202
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 1203
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1211
    if-nez p2, :cond_3

    .line 1212
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1213
    .local v9, x:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v9, p1}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1215
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1221
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v9           #x:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_3
    invoke-virtual {p0, v4, v2}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v8

    .local v8, usedNetworkType:I
    invoke-static {p1, v8}, Lcom/android/server/ConnectivityService$Injector;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;I)V

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v10, v8

    if-nez v6, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopUsingNetworkFeature: net "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " no known tracker for used net type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1229
    const/4 v10, -0x1

    monitor-exit p0

    goto :goto_0

    .line 1231
    :cond_4
    if-eq v8, v4, :cond_6

    .line 1232
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 1233
    .local v1, currentPid:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1234
    const/4 v10, 0x1

    invoke-direct {p0, v5, v10}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 1235
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_5

    .line 1240
    const/4 v10, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 1242
    :cond_5
    const/4 v0, 0x1

    .line 1249
    .end local v1           #currentPid:Ljava/lang/Integer;
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1251
    if-eqz v0, :cond_7

    .line 1253
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopUsingNetworkFeature: teardown net "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1255
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->teardown()Z

    .line 1256
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1245
    :cond_6
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopUsingNetworkFeature: net "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not a known feature - dropping"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1258
    :cond_7
    const/4 v10, -0x1

    goto/16 :goto_0
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .locals 2
    .parameter "netTracker"

    .prologue
    const/4 v0, 0x1

    .line 719
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    invoke-interface {p1, v0}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 723
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryFailover(I)V
    .locals 5
    .parameter "prevNetType"

    .prologue
    .line 1706
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1707
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v3, p1, :cond_0

    .line 1708
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 1718
    :cond_0
    const/4 v2, 0x0

    .local v2, checkType:I
    :goto_0
    const/16 v3, 0xd

    if-gt v2, v3, :cond_5

    .line 1719
    if-ne v2, p1, :cond_2

    .line 1718
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1720
    :cond_2
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 1721
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1722
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 1736
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v3, v2

    .line 1737
    .local v1, checkTracker:Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1738
    .local v0, checkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1739
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1740
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 1742
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to switch to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1745
    .end local v0           #checkInfo:Landroid/net/NetworkInfo;
    .end local v1           #checkTracker:Landroid/net/NetworkStateTracker;
    .end local v2           #checkType:I
    :cond_5
    return-void
.end method

.method private updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 10
    .parameter "network"
    .parameter "iface"
    .parameter
    .parameter "domains"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2301
    .local p3, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .line 2302
    .local v0, changed:Z
    const/4 v6, 0x0

    .line 2303
    .local v6, last:I
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    if-eqz v8, :cond_1

    .line 2304
    add-int/lit8 v6, v6, 0x1

    .line 2305
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 2306
    .local v7, value:Ljava/lang/String;
    const-string v8, "net.dns1"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2308
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no dns provided for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - using "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2310
    const/4 v0, 0x1

    .line 2311
    const-string v8, "net.dns1"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    .end local v7           #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v6, 0x1

    .local v3, i:I
    :goto_0
    iget v8, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    if-gt v3, v8, :cond_4

    .line 2329
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "net.dns"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2331
    .local v5, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 2332
    const-string v8, ""

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2314
    .end local v3           #i:I
    .end local v5           #key:Ljava/lang/String;
    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 2315
    .local v1, dns:Ljava/net/InetAddress;
    add-int/lit8 v6, v6, 0x1

    .line 2316
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "net.dns"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2317
    .restart local v5       #key:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 2318
    .restart local v7       #value:Ljava/lang/String;
    if-nez v0, :cond_3

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2324
    :cond_3
    const/4 v0, 0x1

    .line 2325
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2334
    .end local v1           #dns:Ljava/net/InetAddress;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_4
    iput v6, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 2336
    if-eqz v0, :cond_5

    .line 2338
    :try_start_0
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {p3}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, p2, v9}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2339
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v8, p2}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2344
    :cond_5
    :goto_2
    const-string v8, "net.dns.search"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2345
    const-string v8, "net.dns.search"

    invoke-static {v8, p4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    const/4 v0, 0x1

    .line 2348
    :cond_6
    return v0

    .line 2340
    :catch_0
    move-exception v2

    .line 2341
    .local v2, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception setting default dns interface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Z)Z
    .locals 12
    .parameter "newLp"
    .parameter "curLp"
    .parameter "isLinkDefault"

    .prologue
    .line 2086
    const/4 v9, 0x0

    .line 2087
    .local v9, routesToAdd:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v0}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 2088
    .local v0, dnsDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v7, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v7}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 2089
    .local v7, routeDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    if-eqz p2, :cond_5

    .line 2091
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v7

    .line 2092
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v0

    .line 2098
    :cond_0
    :goto_0
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-eqz v10, :cond_6

    :cond_1
    const/4 v8, 0x1

    .line 2100
    .local v8, routesChanged:Z
    :goto_1
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 2101
    .local v6, r:Landroid/net/RouteInfo;
    if-nez p3, :cond_3

    invoke-virtual {v6}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v10

    if-nez v10, :cond_4

    .line 2102
    :cond_3
    const/4 v10, 0x1

    invoke-direct {p0, p2, v6, v10}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 2104
    :cond_4
    if-nez p3, :cond_2

    .line 2106
    const/4 v10, 0x0

    invoke-direct {p0, p2, v6, v10}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_2

    .line 2093
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #r:Landroid/net/RouteInfo;
    .end local v8           #routesChanged:Z
    :cond_5
    if-eqz p1, :cond_0

    .line 2094
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v10

    iput-object v10, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 2095
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v10

    iput-object v10, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_0

    .line 2098
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 2110
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v8       #routesChanged:Z
    :cond_7
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 2111
    .restart local v6       #r:Landroid/net/RouteInfo;
    if-nez p3, :cond_9

    invoke-virtual {v6}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v10

    if-nez v10, :cond_a

    .line 2112
    :cond_9
    const/4 v10, 0x1

    const/16 v11, 0x64

    invoke-direct {p0, p1, v6, v10, v11}, Lcom/android/server/ConnectivityService;->addRouteDelayed(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZI)Z

    goto :goto_3

    .line 2115
    :cond_a
    const/4 v10, 0x0

    invoke-direct {p0, p1, v6, v10}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 2119
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 2120
    .local v3, ifaceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v10, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 2123
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v10, v3, v6}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2124
    :catch_0
    move-exception v1

    .line 2126
    .local v1, e:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception trying to remove a route: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 2132
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ifaceName:Ljava/lang/String;
    .end local v6           #r:Landroid/net/RouteInfo;
    :cond_b
    if-nez p3, :cond_f

    .line 2134
    if-eqz v8, :cond_d

    .line 2136
    if-eqz p2, :cond_c

    .line 2137
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 2138
    .local v5, oldDns:Ljava/net/InetAddress;
    invoke-direct {p0, p2, v5}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_4

    .line 2141
    .end local v5           #oldDns:Ljava/net/InetAddress;
    :cond_c
    if-eqz p1, :cond_f

    .line 2142
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 2143
    .local v4, newDns:Ljava/net/InetAddress;
    invoke-direct {p0, p1, v4}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_5

    .line 2148
    .end local v4           #newDns:Ljava/net/InetAddress;
    :cond_d
    iget-object v10, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 2149
    .restart local v5       #oldDns:Ljava/net/InetAddress;
    invoke-direct {p0, p2, v5}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_6

    .line 2151
    .end local v5           #oldDns:Ljava/net/InetAddress;
    :cond_e
    iget-object v10, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 2152
    .restart local v4       #newDns:Ljava/net/InetAddress;
    invoke-direct {p0, p1, v4}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_7

    .line 2156
    .end local v4           #newDns:Ljava/net/InetAddress;
    :cond_f
    return v8
.end method

.method private writePidDns(Ljava/util/Collection;I)Z
    .locals 7
    .parameter
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 2260
    .local p1, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v4, 0x1

    .line 2261
    .local v4, j:I
    const/4 v0, 0x0

    .line 2262
    .local v0, changed:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 2263
    .local v1, dns:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 2264
    .local v2, dnsString:Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.dns"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2265
    :cond_0
    const/4 v0, 0x1

    .line 2266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.dns"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 2269
    goto :goto_0

    .line 2270
    .end local v1           #dns:Ljava/net/InetAddress;
    .end local v2           #dnsString:Ljava/lang/String;
    :cond_2
    return v0
.end method


# virtual methods
.method convertFeatureToNetworkType(ILjava/lang/String;)I
    .locals 3
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 2955
    move v0, p1

    .line 2957
    .local v0, usedNetworkType:I
    if-nez p1, :cond_8

    .line 2958
    const-string v1, "enableMMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2959
    const/4 v0, 0x2

    .line 2985
    :goto_0
    return v0

    .line 2960
    :cond_0
    const-string v1, "enableSUPL"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2961
    const/4 v0, 0x3

    goto :goto_0

    .line 2962
    :cond_1
    const-string v1, "enableDUN"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "enableDUNAlways"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2964
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 2965
    :cond_3
    const-string v1, "enableHIPRI"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2966
    const/4 v0, 0x5

    goto :goto_0

    .line 2967
    :cond_4
    const-string v1, "enableFOTA"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2968
    const/16 v0, 0xa

    goto :goto_0

    .line 2969
    :cond_5
    const-string v1, "enableIMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2970
    const/16 v0, 0xb

    goto :goto_0

    .line 2971
    :cond_6
    const-string v1, "enableCBS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2972
    const/16 v0, 0xc

    goto :goto_0

    .line 2974
    :cond_7
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any mobile netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2976
    :cond_8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    .line 2977
    const-string v1, "p2p"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2978
    const/16 v0, 0xd

    goto :goto_0

    .line 2980
    :cond_9
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any wifi netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2983
    :cond_a
    const-string v1, "ConnectivityService"

    const-string v2, "Unexpected network type"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2406
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1

    .line 2409
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2459
    :cond_0
    return-void

    .line 2414
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2415
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v6, v0, v2

    .line 2416
    .local v6, nst:Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_3

    .line 2417
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2418
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Active network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2421
    :cond_2
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2422
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2423
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2415
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2427
    .end local v6           #nst:Landroid/net/NetworkStateTracker;
    :cond_4
    const-string v10, "Network Requester Pids:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2428
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_6

    aget v5, v0, v3

    .line 2429
    .local v5, net:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2430
    .local v8, pidString:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v5

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 2431
    .local v7, pid:Ljava/lang/Object;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 2433
    .end local v7           #pid:Ljava/lang/Object;
    :cond_5
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2428
    add-int/lit8 v2, v3, 0x1

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 2435
    .end local v5           #net:I
    .end local v8           #pidString:Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2437
    const-string v10, "FeatureUsers:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2438
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 2439
    .local v9, requester:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2441
    .end local v9           #requester:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2443
    monitor-enter p0

    .line 2444
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NetworkTranstionWakeLock is currently "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, ""

    :goto_4
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "held."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2446
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "It was last requested for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2447
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2448
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2450
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2452
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 2453
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2454
    const-string v10, "Inet condition reports:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2455
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 2456
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2455
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2444
    .end local v1           #i:I
    :cond_8
    :try_start_1
    const-string v10, "not "

    goto :goto_4

    .line 2447
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "config"

    .prologue
    .line 3041
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 774
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 775
    .local v0, uid:I
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "uid"

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 781
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 4

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 880
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 882
    .local v1, token:J
    :try_start_0
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 883
    .local v0, state:Landroid/net/NetworkState;
    if-eqz v0, :cond_0

    .line 885
    :try_start_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v3, v0}, Landroid/net/INetworkPolicyManager;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 891
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 889
    return-object v3

    .line 886
    :catch_0
    move-exception v3

    .line 889
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 891
    .end local v0           #state:Landroid/net/NetworkState;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 8

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 805
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 806
    .local v5, uid:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 807
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 808
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 809
    .local v4, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    .line 810
    invoke-direct {p0, v4, v5}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 813
    .end local v4           #tracker:Landroid/net/NetworkStateTracker;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/NetworkInfo;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/NetworkInfo;

    return-object v6

    .line 813
    .end local v0           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .locals 11

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 851
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 852
    .local v6, uid:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 853
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 855
    .local v5, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_0

    .line 856
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 857
    .local v2, info:Landroid/net/NetworkInfo;
    new-instance v7, Landroid/net/NetworkState;

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v10

    invoke-direct {v7, v2, v9, v10}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 861
    .end local v5           #tracker:Landroid/net/NetworkStateTracker;
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/NetworkState;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/NetworkState;

    return-object v7

    .line 861
    .end local v0           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 2868
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2869
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    monitor-exit v1

    return-object v0

    .line 2870
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 2626
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2628
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2629
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 2631
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 838
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 839
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 841
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 842
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 845
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1450
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1451
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1454
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 1451
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 787
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 788
    .local v0, uid:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkPreference()I
    .locals 2

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 648
    monitor-enter p0

    .line 649
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 650
    .local v0, preference:I
    monitor-exit p0

    .line 651
    return v0

    .line 650
    .end local v0           #preference:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 2817
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2818
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    goto :goto_0

    .line 2819
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2655
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2656
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2657
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 2659
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2675
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2676
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2637
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2638
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2639
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 2641
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2646
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2647
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2648
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 2650
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfacePairs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2686
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2687
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2680
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2681
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2691
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2692
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActiveNetworkMetered()Z
    .locals 3

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 898
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 900
    .local v0, token:J
    :try_start_0
    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->isNetworkMeteredUnchecked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 902
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    return v2

    .line 902
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 820
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTetheringSupported()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2699
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2700
    const-string v4, "ro.tether.denied"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 2701
    .local v0, defaultVal:I
    :goto_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_supported"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 2703
    .local v1, tetherEnabledInSettings:Z
    :goto_1
    if-eqz v1, :cond_2

    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    if-eqz v4, :cond_2

    :goto_2
    return v3

    .end local v0           #defaultVal:I
    .end local v1           #tetherEnabledInSettings:Z
    :cond_0
    move v0, v3

    .line 2700
    goto :goto_0

    .restart local v0       #defaultVal:I
    :cond_1
    move v1, v2

    .line 2701
    goto :goto_1

    .restart local v1       #tetherEnabledInSettings:Z
    :cond_2
    move v3, v2

    .line 2703
    goto :goto_2
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "oldPackage"
    .parameter "newPackage"

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public protectVpn(Landroid/os/ParcelFileDescriptor;)Z
    .locals 3
    .parameter "socket"

    .prologue
    .line 3004
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 3005
    .local v0, type:I
    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3006
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/connectivity/Vpn;->protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3007
    const/4 v1, 0x1

    .line 3013
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 3018
    .end local v0           #type:I
    :goto_0
    return v1

    .line 3012
    :catchall_0
    move-exception v1

    .line 3013
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3012
    :goto_1
    throw v1

    .line 3009
    :catch_0
    move-exception v1

    .line 3013
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3018
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    .line 3014
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1

    .restart local v0       #type:I
    :catch_3
    move-exception v2

    goto :goto_0

    .line 3013
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public reportInetCondition(II)V
    .locals 6
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    .line 2728
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.STATUS_BAR"

    const-string v5, "ConnectivityService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    .line 2734
    .local v0, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 2735
    .local v2, uid:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reports inet is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x32

    if-le p2, v3, :cond_0

    const-string v3, "connected"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "network Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2738
    .local v1, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2739
    :goto_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_1

    .line 2740
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2735
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    const-string v3, "disconnected"

    goto :goto_0

    .line 2743
    .restart local v1       #s:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2745
    return-void
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)V
    .locals 5
    .parameter "forWhom"

    .prologue
    .line 2711
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2712
    monitor-enter p0

    .line 2713
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 2722
    :goto_0
    return-void

    .line 2714
    :cond_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    .line 2715
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2716
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 2717
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2718
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    iget v3, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2717
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestRouteToHost(II)Z
    .locals 2
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 1274
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1276
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 1277
    const/4 v1, 0x0

    .line 1280
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/ConnectivityService;->requestRouteToHostAddress(I[B)Z

    move-result v1

    goto :goto_0
.end method

.method public requestRouteToHostAddress(I[B)Z
    .locals 9
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    const/4 v6, 0x0

    .line 1293
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1294
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1295
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1298
    :cond_0
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1299
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1322
    :cond_1
    :goto_0
    return v6

    .line 1302
    :cond_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v7, p1

    .line 1304
    .local v5, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1312
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1314
    .local v3, token:J
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 1315
    .local v0, addr:Ljava/net/InetAddress;
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 1316
    .local v2, lp:Landroid/net/LinkProperties;
    invoke-direct {p0, v2, v0}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1320
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #lp:Landroid/net/LinkProperties;
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1317
    :catch_0
    move-exception v1

    .line 1318
    .local v1, e:Ljava/net/UnknownHostException;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestRouteToHostAddress got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1320
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setDataDependency(IZ)V
    .locals 4
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 1458
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1460
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1462
    return-void

    .line 1460
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .locals 6
    .parameter "proxyProperties"

    .prologue
    .line 2823
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2824
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2825
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-ne p1, v4, :cond_1

    monitor-exit v5

    .line 2851
    :cond_0
    :goto_0
    return-void

    .line 2826
    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v4}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v5

    goto :goto_0

    .line 2845
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2827
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v5

    goto :goto_0

    .line 2829
    :cond_3
    const-string v1, ""

    .line 2830
    .local v1, host:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2831
    .local v2, port:I
    const-string v0, ""

    .line 2832
    .local v0, exclList:Ljava/lang/String;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2833
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, p1}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 2834
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 2835
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    .line 2836
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    .line 2840
    :goto_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2841
    .local v3, res:Landroid/content/ContentResolver;
    const-string v4, "global_http_proxy_host"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2842
    const-string v4, "global_http_proxy_port"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2843
    const-string v4, "global_http_proxy_exclusion_list"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2845
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2847
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-nez v4, :cond_0

    .line 2848
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    goto :goto_0

    .line 2838
    .end local v3           #res:Landroid/content/ContentResolver;
    :cond_4
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setMobileDataEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 1533
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1536
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6b

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1538
    return-void

    :cond_0
    move v0, v1

    .line 1536
    goto :goto_0
.end method

.method public setNetworkPreference(I)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 642
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 643
    return-void
.end method

.method public setPolicyDataEnable(IZ)V
    .locals 4
    .parameter "networkType"
    .parameter "enabled"

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x71

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1565
    return-void

    .line 1563
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRadio(IZ)Z
    .locals 3
    .parameter "netType"
    .parameter "turnOn"

    .prologue
    const/4 v1, 0x0

    .line 927
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 928
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 932
    :cond_0
    :goto_0
    return v1

    .line 931
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, p1

    .line 932
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 6
    .parameter "turnOn"

    .prologue
    .line 918
    const/4 v3, 0x1

    .line 919
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 920
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 921
    .local v4, t:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 920
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 921
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 923
    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :cond_2
    return v3
.end method

.method public setUsbTethering(Z)I
    .locals 1
    .parameter "enable"

    .prologue
    .line 2664
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2665
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2666
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    .line 2668
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "config"
    .parameter "racoon"
    .parameter "mtpd"

    .prologue
    .line 3052
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3053
    return-void
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .locals 25
    .parameter "networkType"
    .parameter "feature"
    .parameter "binder"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1009
    const-wide/16 v14, 0x0

    .line 1011
    .local v14, startTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1017
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1019
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v21, v0

    aget-object v21, v21, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v21, :cond_2

    .line 1021
    :cond_0
    const/16 v21, 0x3

    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1132
    .local v6, execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1133
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1128
    :cond_1
    return v21

    .line 1024
    .end local v6           #execTime:J
    :cond_2
    :try_start_1
    new-instance v8, Lcom/android/server/ConnectivityService$FeatureUser;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$FeatureUser;-><init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1027
    .local v8, f:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v20

    .line 1029
    .local v20, usedNetworkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1030
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1034
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->isNetworkMeteredUnchecked(I)Z

    move-result v11

    .line 1036
    .local v11, networkMetered:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1037
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v19

    .line 1038
    .local v19, uidRules:I
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1039
    if-eqz v11, :cond_5

    and-int/lit8 v21, v19, 0x1

    if-eqz v21, :cond_5

    .line 1040
    const/16 v21, 0x3

    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1132
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1133
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1038
    .end local v6           #execTime:J
    .end local v19           #uidRules:I
    :catchall_0
    move-exception v21

    :try_start_3
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1130
    .end local v8           #f:Lcom/android/server/ConnectivityService$FeatureUser;
    .end local v11           #networkMetered:Z
    .end local v20           #usedNetworkType:I
    :catchall_1
    move-exception v21

    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1132
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_4

    .line 1133
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1130
    :cond_4
    throw v21

    .line 1043
    .end local v6           #execTime:J
    .restart local v8       #f:Lcom/android/server/ConnectivityService$FeatureUser;
    .restart local v11       #networkMetered:Z
    .restart local v19       #uidRules:I
    .restart local v20       #usedNetworkType:I
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v21, v0

    aget-object v10, v21, v20

    .line 1044
    .local v10, network:Landroid/net/NetworkStateTracker;
    if-eqz v10, :cond_11

    .line 1045
    new-instance v5, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1046
    .local v5, currentPid:Ljava/lang/Integer;
    move/from16 v0, v20

    move/from16 v1, p1

    if-eq v0, v1, :cond_f

    .line 1047
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 1049
    .local v12, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v21

    if-nez v21, :cond_7

    .line 1050
    const-string v21, "enableDUNAlways"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 1051
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "special network not available ni="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1052
    const/16 v21, 0x2

    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1132
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1133
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1056
    .end local v6           #execTime:J
    :cond_6
    :try_start_6
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "special network not available, but try anyway ni="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1062
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay(I)I

    move-result v13

    .line 1064
    .local v13, restoreTimer:I
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1065
    const/4 v4, 0x1

    .line 1066
    .local v4, addToList:Z
    if-gez v13, :cond_9

    .line 1069
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1070
    .local v18, u:Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1072
    const/4 v4, 0x0

    .line 1078
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v18           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_9
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v21, v21, v20

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v21, v21, v20

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static/range {v20 .. v20}, Lcom/android/server/ConnectivityService$Injector;->startUsingNetworkFeature(I)V

    if-ltz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x65

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    int-to-long v0, v13

    move-wide/from16 v23, v0

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1090
    :cond_c
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v21

    if-nez v21, :cond_e

    .line 1092
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 1093
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v16

    .line 1096
    .local v16, token:J
    :try_start_9
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1099
    :try_start_a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1101
    const/16 v21, 0x0

    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1132
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1133
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1083
    .end local v6           #execTime:J
    .end local v16           #token:J
    :catchall_2
    move-exception v21

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v21

    .line 1099
    .restart local v16       #token:J
    :catchall_3
    move-exception v21

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1104
    .end local v16           #token:J
    :cond_d
    const/16 v21, 0x1

    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1132
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1133
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1111
    .end local v6           #execTime:J
    :cond_e
    :try_start_d
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "startUsingNetworkFeature reconnecting to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1114
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->reconnect()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1115
    const/16 v21, 0x1

    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1132
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1133
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1118
    .end local v4           #addToList:Z
    .end local v6           #execTime:J
    .end local v12           #ni:Landroid/net/NetworkInfo;
    .end local v13           #restoreTimer:I
    :cond_f
    :try_start_e
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1119
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v21, v21, v20

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v21, v21, v20

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    :cond_10
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1125
    const/16 v21, -0x1

    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1132
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1133
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1124
    .end local v6           #execTime:J
    :catchall_4
    move-exception v21

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v21
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1128
    .end local v5           #currentPid:Ljava/lang/Integer;
    :cond_11
    const/16 v21, 0x2

    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1132
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1133
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 8
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v6, 0x1

    .line 1143
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1145
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v2

    .line 1146
    .local v2, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v4

    .line 1148
    .local v4, uid:I
    const/4 v3, 0x0

    .line 1149
    .local v3, u:Lcom/android/server/ConnectivityService$FeatureUser;
    const/4 v0, 0x0

    .line 1151
    .local v0, found:Z
    monitor-enter p0

    .line 1152
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1153
    .local v5, x:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v5, v2, v4, p1, p2}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1154
    move-object v3, v5

    .line 1155
    const/4 v0, 0x1

    .line 1159
    .end local v5           #x:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 1162
    invoke-direct {p0, v3, v6}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v6

    .line 1166
    :cond_2
    return v6

    .line 1159
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 1875
    monitor-enter p0

    .line 1876
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 1877
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1879
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1881
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1883
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1884
    return-void

    .line 1881
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 2604
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 2606
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2607
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 2609
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 2615
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 2617
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2618
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 2620
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    .locals 3
    .parameter "nt"

    .prologue
    .line 2166
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v1

    .line 2167
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2169
    .local v0, bufferSizes:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 2173
    const-string v1, "net.tcp.buffersize.default"

    .line 2174
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2178
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2183
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setBufferSize(Ljava/lang/String;)V

    .line 2185
    :cond_1
    return-void
.end method
