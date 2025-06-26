.class public final enum Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

.field public static final enum IN_PROGRESS:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

.field public static final enum NEW:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

.field public static final enum PLAYING:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

.field public static final enum READ:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;->NEW:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    new-instance v1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    const-string v3, "IN_PROGRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;->IN_PROGRESS:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    new-instance v3, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    const-string v5, "READ"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;->READ:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    new-instance v5, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    const-string v7, "PLAYING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;->PLAYING:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;->$VALUES:[Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;
    .locals 1

    .line 1
    const-class v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    return-object p0
.end method

.method public static values()[Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;->$VALUES:[Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    invoke-virtual {v0}, [Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    return-object v0
.end method
