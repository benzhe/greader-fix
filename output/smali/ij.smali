.class public final enum Lij;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lgj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lij$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lij;",
        ">;",
        "Lgj;"
    }
.end annotation


# static fields
.field public static final enum A:Lij;

.field public static final enum B:Lij;

.field public static final enum C:Lij;

.field public static final enum D:Lij;

.field public static final enum E:Lij;

.field public static final enum F:Lij;

.field public static final enum G:Lij;

.field public static final enum H:Lij;

.field public static final enum I:Lij;

.field public static final enum J:Lij;

.field public static final enum K:Lij;

.field public static final enum L:Lij;

.field public static final enum M:Lij;

.field public static final enum N:Lij;

.field public static final enum O:Lij;

.field public static final enum P:Lij;

.field public static final enum Q:Lij;

.field public static final enum R:Lij;

.field public static final enum S:Lij;

.field public static final enum T:Lij;

.field public static final enum U:Lij;

.field public static final enum V:Lij;

.field public static final enum W:Lij;

.field public static final enum X:Lij;

.field public static final enum Y:Lij;

.field public static final enum Z:Lij;

.field public static final synthetic a0:[Lij;

.field public static final enum h:Lij;

.field public static final enum i:Lij;

.field public static final enum j:Lij;

.field public static final enum k:Lij;

.field public static final enum l:Lij;

.field public static final enum m:Lij;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum n:Lij;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum o:Lij;

.field public static final enum p:Lij;

.field public static final enum q:Lij;

.field public static final enum r:Lij;

.field public static final enum s:Lij;

.field public static final enum t:Lij;

.field public static final enum u:Lij;

.field public static final enum v:Lij;

.field public static final enum w:Lij;

.field public static final enum x:Lij;

.field public static final enum y:Lij;

.field public static final enum z:Lij;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 54

    .line 1
    new-instance v6, Lij;

    const-string v1, "VISUAL_STATE_CALLBACK"

    const/4 v2, 0x0

    const-string v3, "VISUAL_STATE_CALLBACK"

    const-string v4, "VISUAL_STATE_CALLBACK"

    const/16 v5, 0x17

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lij;->h:Lij;

    .line 2
    new-instance v0, Lij;

    const-string v8, "OFF_SCREEN_PRERASTER"

    const/4 v9, 0x1

    const-string v10, "OFF_SCREEN_PRERASTER"

    const-string v11, "OFF_SCREEN_PRERASTER"

    const/16 v12, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lij;->i:Lij;

    .line 3
    new-instance v1, Lij;

    const-string v14, "SAFE_BROWSING_ENABLE"

    const/4 v15, 0x2

    const-string v16, "SAFE_BROWSING_ENABLE"

    const-string v17, "SAFE_BROWSING_ENABLE"

    const/16 v18, 0x1a

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lij;->j:Lij;

    .line 4
    new-instance v2, Lij;

    const-string v8, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const/4 v9, 0x3

    const-string v10, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const-string v11, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const/16 v12, 0x18

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lij;->k:Lij;

    .line 5
    new-instance v3, Lij;

    const-string v14, "START_SAFE_BROWSING"

    const/4 v15, 0x4

    const-string v16, "START_SAFE_BROWSING"

    const-string v17, "START_SAFE_BROWSING"

    const/16 v18, 0x1b

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lij;->l:Lij;

    .line 6
    new-instance v4, Lij;

    const-string v8, "SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED"

    const/4 v9, 0x5

    const-string v10, "SAFE_BROWSING_WHITELIST"

    const-string v11, "SAFE_BROWSING_WHITELIST"

    const/16 v12, 0x1b

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lij;->m:Lij;

    .line 7
    new-instance v5, Lij;

    const-string v14, "SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED"

    const/4 v15, 0x6

    const-string v16, "SAFE_BROWSING_WHITELIST"

    const-string v17, "SAFE_BROWSING_ALLOWLIST"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v5, Lij;->n:Lij;

    .line 8
    new-instance v13, Lij;

    const-string v8, "SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED"

    const/4 v9, 0x7

    const-string v10, "SAFE_BROWSING_ALLOWLIST"

    const-string v11, "SAFE_BROWSING_WHITELIST"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v13, Lij;->o:Lij;

    .line 9
    new-instance v7, Lij;

    const-string v15, "SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED"

    const/16 v16, 0x8

    const-string v17, "SAFE_BROWSING_ALLOWLIST"

    const-string v18, "SAFE_BROWSING_ALLOWLIST"

    const/16 v19, 0x1b

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v7, Lij;->p:Lij;

    .line 10
    new-instance v8, Lij;

    const-string v21, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    const/16 v22, 0x9

    const-string v23, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    const-string v24, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    const/16 v25, 0x1b

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v8, Lij;->q:Lij;

    .line 11
    new-instance v9, Lij;

    const-string v15, "SERVICE_WORKER_BASIC_USAGE"

    const/16 v16, 0xa

    const-string v17, "SERVICE_WORKER_BASIC_USAGE"

    const-string v18, "SERVICE_WORKER_BASIC_USAGE"

    const/16 v19, 0x18

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v9, Lij;->r:Lij;

    .line 12
    new-instance v10, Lij;

    const-string v21, "SERVICE_WORKER_CACHE_MODE"

    const/16 v22, 0xb

    const-string v23, "SERVICE_WORKER_CACHE_MODE"

    const-string v24, "SERVICE_WORKER_CACHE_MODE"

    const/16 v25, 0x18

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v10, Lij;->s:Lij;

    .line 13
    new-instance v11, Lij;

    const-string v15, "SERVICE_WORKER_CONTENT_ACCESS"

    const/16 v16, 0xc

    const-string v17, "SERVICE_WORKER_CONTENT_ACCESS"

    const-string v18, "SERVICE_WORKER_CONTENT_ACCESS"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v11, Lij;->t:Lij;

    .line 14
    new-instance v12, Lij;

    const-string v21, "SERVICE_WORKER_FILE_ACCESS"

    const/16 v22, 0xd

    const-string v23, "SERVICE_WORKER_FILE_ACCESS"

    const-string v24, "SERVICE_WORKER_FILE_ACCESS"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v12, Lij;->u:Lij;

    .line 15
    new-instance v20, Lij;

    const-string v15, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    const/16 v16, 0xe

    const-string v17, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    const-string v18, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v20, Lij;->v:Lij;

    .line 16
    new-instance v14, Lij;

    const-string v22, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    const/16 v23, 0xf

    const-string v24, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    const-string v25, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    const/16 v26, 0x18

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v14, Lij;->w:Lij;

    .line 17
    new-instance v15, Lij;

    const-string v28, "RECEIVE_WEB_RESOURCE_ERROR"

    const/16 v29, 0x10

    const-string v30, "RECEIVE_WEB_RESOURCE_ERROR"

    const-string v31, "RECEIVE_WEB_RESOURCE_ERROR"

    const/16 v32, 0x17

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v15, Lij;->x:Lij;

    .line 18
    new-instance v16, Lij;

    const-string v22, "RECEIVE_HTTP_ERROR"

    const/16 v23, 0x11

    const-string v24, "RECEIVE_HTTP_ERROR"

    const-string v25, "RECEIVE_HTTP_ERROR"

    const/16 v26, 0x17

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v16, Lij;->y:Lij;

    .line 19
    new-instance v17, Lij;

    const-string v28, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const/16 v29, 0x12

    const-string v30, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const-string v31, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const/16 v32, 0x18

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v17, Lij;->z:Lij;

    .line 20
    new-instance v18, Lij;

    const-string v22, "SAFE_BROWSING_HIT"

    const/16 v23, 0x13

    const-string v24, "SAFE_BROWSING_HIT"

    const-string v25, "SAFE_BROWSING_HIT"

    const/16 v26, 0x1b

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v18, Lij;->A:Lij;

    .line 21
    new-instance v19, Lij;

    const-string v28, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    const/16 v29, 0x14

    const-string v30, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    const-string v31, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v19, Lij;->B:Lij;

    .line 22
    new-instance v27, Lij;

    const-string v22, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const/16 v23, 0x15

    const-string v24, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const-string v25, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const/16 v26, 0x17

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v27, Lij;->C:Lij;

    .line 23
    new-instance v21, Lij;

    const-string v29, "WEB_RESOURCE_ERROR_GET_CODE"

    const/16 v30, 0x16

    const-string v31, "WEB_RESOURCE_ERROR_GET_CODE"

    const-string v32, "WEB_RESOURCE_ERROR_GET_CODE"

    const/16 v33, 0x17

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v21, Lij;->D:Lij;

    .line 24
    new-instance v22, Lij;

    const-string v35, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const/16 v36, 0x17

    const-string v37, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const-string v38, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const/16 v39, 0x1b

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v22, Lij;->E:Lij;

    .line 25
    new-instance v23, Lij;

    const-string v29, "SAFE_BROWSING_RESPONSE_PROCEED"

    const/16 v30, 0x18

    const-string v31, "SAFE_BROWSING_RESPONSE_PROCEED"

    const-string v32, "SAFE_BROWSING_RESPONSE_PROCEED"

    const/16 v33, 0x1b

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v23, Lij;->F:Lij;

    .line 26
    new-instance v24, Lij;

    const-string v35, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    const/16 v36, 0x19

    const-string v37, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    const-string v38, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v24, Lij;->G:Lij;

    .line 27
    new-instance v25, Lij;

    const-string v29, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const/16 v30, 0x1a

    const-string v31, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const-string v32, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const/16 v33, 0x17

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v25, Lij;->H:Lij;

    .line 28
    new-instance v26, Lij;

    const-string v35, "WEB_MESSAGE_PORT_CLOSE"

    const/16 v36, 0x1b

    const-string v37, "WEB_MESSAGE_PORT_CLOSE"

    const-string v38, "WEB_MESSAGE_PORT_CLOSE"

    const/16 v39, 0x17

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v26, Lij;->I:Lij;

    .line 29
    new-instance v34, Lij;

    const-string v29, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    const/16 v30, 0x1c

    const-string v31, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    const-string v32, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v34, Lij;->J:Lij;

    .line 30
    new-instance v28, Lij;

    const-string v36, "CREATE_WEB_MESSAGE_CHANNEL"

    const/16 v37, 0x1d

    const-string v38, "CREATE_WEB_MESSAGE_CHANNEL"

    const-string v39, "CREATE_WEB_MESSAGE_CHANNEL"

    const/16 v40, 0x17

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v40}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v28, Lij;->K:Lij;

    .line 31
    new-instance v29, Lij;

    const-string v42, "POST_WEB_MESSAGE"

    const/16 v43, 0x1e

    const-string v44, "POST_WEB_MESSAGE"

    const-string v45, "POST_WEB_MESSAGE"

    const/16 v46, 0x17

    move-object/from16 v41, v29

    invoke-direct/range {v41 .. v46}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v29, Lij;->L:Lij;

    .line 32
    new-instance v30, Lij;

    const-string v36, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    const/16 v37, 0x1f

    const-string v38, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    const-string v39, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    move-object/from16 v35, v30

    invoke-direct/range {v35 .. v40}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v30, Lij;->M:Lij;

    .line 33
    new-instance v31, Lij;

    const-string v42, "GET_WEB_VIEW_CLIENT"

    const/16 v43, 0x20

    const-string v44, "GET_WEB_VIEW_CLIENT"

    const-string v45, "GET_WEB_VIEW_CLIENT"

    const/16 v46, 0x1a

    move-object/from16 v41, v31

    invoke-direct/range {v41 .. v46}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v31, Lij;->N:Lij;

    .line 34
    new-instance v32, Lij;

    const-string v36, "GET_WEB_CHROME_CLIENT"

    const/16 v37, 0x21

    const-string v38, "GET_WEB_CHROME_CLIENT"

    const-string v39, "GET_WEB_CHROME_CLIENT"

    const/16 v40, 0x1a

    move-object/from16 v35, v32

    invoke-direct/range {v35 .. v40}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v32, Lij;->O:Lij;

    .line 35
    new-instance v33, Lij;

    const-string v42, "GET_WEB_VIEW_RENDERER"

    const/16 v43, 0x22

    const-string v44, "GET_WEB_VIEW_RENDERER"

    const-string v45, "GET_WEB_VIEW_RENDERER"

    const/16 v46, 0x1d

    move-object/from16 v41, v33

    invoke-direct/range {v41 .. v46}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v33, Lij;->P:Lij;

    .line 36
    new-instance v41, Lij;

    const-string v36, "WEB_VIEW_RENDERER_TERMINATE"

    const/16 v37, 0x23

    const-string v38, "WEB_VIEW_RENDERER_TERMINATE"

    const-string v39, "WEB_VIEW_RENDERER_TERMINATE"

    const/16 v40, 0x1d

    move-object/from16 v35, v41

    invoke-direct/range {v35 .. v40}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v41, Lij;->Q:Lij;

    .line 37
    new-instance v35, Lij;

    const-string v43, "TRACING_CONTROLLER_BASIC_USAGE"

    const/16 v44, 0x24

    const-string v45, "TRACING_CONTROLLER_BASIC_USAGE"

    const-string v46, "TRACING_CONTROLLER_BASIC_USAGE"

    const/16 v47, 0x1c

    move-object/from16 v42, v35

    invoke-direct/range {v42 .. v47}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v35, Lij;->R:Lij;

    .line 38
    new-instance v36, Lij;

    const-string v49, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const/16 v50, 0x25

    const-string v51, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const-string v52, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const/16 v53, 0x1d

    move-object/from16 v48, v36

    invoke-direct/range {v48 .. v53}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v36, Lij;->S:Lij;

    move-object/from16 v37, v15

    .line 39
    new-instance v15, Lij;

    move-object/from16 v38, v14

    const-string v14, "PROXY_OVERRIDE"

    move-object/from16 v39, v12

    const/16 v12, 0x26

    move-object/from16 v40, v11

    const-string v11, "PROXY_OVERRIDE:3"

    invoke-direct {v15, v14, v12, v14, v11}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lij;->T:Lij;

    .line 40
    new-instance v11, Lij;

    const-string v14, "SUPPRESS_ERROR_PAGE"

    const/16 v12, 0x27

    invoke-direct {v11, v14, v12, v14, v14}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lij;->U:Lij;

    .line 41
    new-instance v14, Lij;

    const-string v12, "MULTI_PROCESS"

    move-object/from16 v44, v11

    const/16 v11, 0x28

    move-object/from16 v45, v15

    const-string v15, "MULTI_PROCESS_QUERY"

    invoke-direct {v14, v12, v11, v12, v15}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lij;->V:Lij;

    .line 42
    new-instance v12, Lij;

    const-string v15, "FORCE_DARK"

    const/16 v11, 0x29

    invoke-direct {v12, v15, v11, v15, v15}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lij;->W:Lij;

    .line 43
    new-instance v15, Lij;

    const-string v11, "FORCE_DARK_STRATEGY"

    move-object/from16 v48, v12

    const/16 v12, 0x2a

    move-object/from16 v49, v14

    const-string v14, "FORCE_DARK_BEHAVIOR"

    invoke-direct {v15, v11, v12, v11, v14}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lij;->X:Lij;

    .line 44
    new-instance v11, Lij;

    const-string v14, "WEB_MESSAGE_LISTENER"

    const/16 v12, 0x2b

    invoke-direct {v11, v14, v12, v14, v14}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lij;->Y:Lij;

    .line 45
    new-instance v14, Lij;

    const-string v12, "DOCUMENT_START_SCRIPT"

    move-object/from16 v52, v11

    const/16 v11, 0x2c

    move-object/from16 v53, v15

    const-string v15, "DOCUMENT_START_SCRIPT:1"

    invoke-direct {v14, v12, v11, v12, v15}, Lij;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lij;->Z:Lij;

    const/16 v12, 0x2d

    new-array v12, v12, [Lij;

    const/4 v15, 0x0

    aput-object v6, v12, v15

    const/4 v6, 0x1

    aput-object v0, v12, v6

    const/4 v0, 0x2

    aput-object v1, v12, v0

    const/4 v0, 0x3

    aput-object v2, v12, v0

    const/4 v0, 0x4

    aput-object v3, v12, v0

    const/4 v0, 0x5

    aput-object v4, v12, v0

    const/4 v0, 0x6

    aput-object v5, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v7, v12, v0

    const/16 v0, 0x9

    aput-object v8, v12, v0

    const/16 v0, 0xa

    aput-object v9, v12, v0

    const/16 v0, 0xb

    aput-object v10, v12, v0

    const/16 v0, 0xc

    aput-object v40, v12, v0

    const/16 v0, 0xd

    aput-object v39, v12, v0

    const/16 v0, 0xe

    aput-object v20, v12, v0

    const/16 v0, 0xf

    aput-object v38, v12, v0

    const/16 v0, 0x10

    aput-object v37, v12, v0

    const/16 v0, 0x11

    aput-object v16, v12, v0

    const/16 v0, 0x12

    aput-object v17, v12, v0

    const/16 v0, 0x13

    aput-object v18, v12, v0

    const/16 v0, 0x14

    aput-object v19, v12, v0

    const/16 v0, 0x15

    aput-object v27, v12, v0

    const/16 v0, 0x16

    aput-object v21, v12, v0

    const/16 v0, 0x17

    aput-object v22, v12, v0

    const/16 v0, 0x18

    aput-object v23, v12, v0

    const/16 v0, 0x19

    aput-object v24, v12, v0

    const/16 v0, 0x1a

    aput-object v25, v12, v0

    const/16 v0, 0x1b

    aput-object v26, v12, v0

    const/16 v0, 0x1c

    aput-object v34, v12, v0

    const/16 v0, 0x1d

    aput-object v28, v12, v0

    const/16 v0, 0x1e

    aput-object v29, v12, v0

    const/16 v0, 0x1f

    aput-object v30, v12, v0

    const/16 v0, 0x20

    aput-object v31, v12, v0

    const/16 v0, 0x21

    aput-object v32, v12, v0

    const/16 v0, 0x22

    aput-object v33, v12, v0

    const/16 v0, 0x23

    aput-object v41, v12, v0

    const/16 v0, 0x24

    aput-object v35, v12, v0

    const/16 v0, 0x25

    aput-object v36, v12, v0

    const/16 v0, 0x26

    aput-object v45, v12, v0

    const/16 v0, 0x27

    aput-object v44, v12, v0

    const/16 v0, 0x28

    aput-object v49, v12, v0

    const/16 v0, 0x29

    aput-object v48, v12, v0

    const/16 v0, 0x2a

    aput-object v53, v12, v0

    const/16 v0, 0x2b

    aput-object v52, v12, v0

    aput-object v14, v12, v11

    .line 46
    sput-object v12, Lij;->a0:[Lij;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lij;->e:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lij;->f:Ljava/lang/String;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lij;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput-object p3, p0, Lij;->e:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lij;->f:Ljava/lang/String;

    .line 8
    iput p5, p0, Lij;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lij;
    .locals 1

    .line 1
    const-class v0, Lij;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lij;

    return-object p0
.end method

.method public static values()[Lij;
    .locals 1

    .line 1
    sget-object v0, Lij;->a0:[Lij;

    invoke-virtual {v0}, [Lij;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lij;

    return-object v0
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lij;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isSupported()Z
    .locals 4

    .line 1
    iget v0, p0, Lij;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lij;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public k()Z
    .locals 6

    .line 1
    sget-object v0, Lij$a;->a:Ljava/util/Set;

    iget-object v1, p0, Lij;->f:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 3
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "userdebug"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":dev"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_2
    return v3
.end method
