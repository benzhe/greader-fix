.class public final enum Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

.field public static final enum AUDIO:Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

.field public static final enum UNKNOWN:Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

.field public static final enum VIDEO:Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;->AUDIO:Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    new-instance v1, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;->VIDEO:Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    new-instance v3, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;->UNKNOWN:Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;->$VALUES:[Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;
    .locals 1

    .line 1
    const-class v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    return-object p0
.end method

.method public static values()[Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;
    .locals 1

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;->$VALUES:[Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    invoke-virtual {v0}, [Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    return-object v0
.end method
