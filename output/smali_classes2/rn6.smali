.class public abstract Lrn6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrn6$a;,
        Lrn6$b;,
        Lrn6$e;,
        Lrn6$d;,
        Lrn6$c;
    }
.end annotation


# static fields
.field public static final ACTION_ITEM_TAG_ADD_LABEL:I = 0x1

.field public static final ACTION_ITEM_TAG_NEW_LABEL:I = 0x3

.field public static final ACTION_ITEM_TAG_REMOVE_LABEL:I = 0x2

.field public static final ACTION_SUBSCRIPTION_ADD_LABEL:I = 0x4

.field public static final ACTION_SUBSCRIPTION_EDIT:I = 0x1

.field public static final ACTION_SUBSCRIPTION_NEW_LABEL:I = 0x6

.field public static final ACTION_SUBSCRIPTION_REMOVE_LABEL:I = 0x5

.field public static final ACTION_SUBSCRIPTION_SUBCRIBE:I = 0x2

.field public static final ACTION_SUBSCRIPTION_UNSUBCRIBE:I = 0x3

.field public static final LOGIN_FEEDLY:I = 0x5

.field public static final LOGIN_INOREADER:I = 0x8

.field public static final LOGIN_NONE:I = 0x0

.field public static final LOGIN_OLD_READER:I = 0x6

.field public static final LOGIN_RSS_READER:I = 0x7

.field public static final STATE_READ:Ljava/lang/String; = "state/read"

.field public static final STATE_READING_LIST:Ljava/lang/String; = "state/reading-list"

.field public static final STATE_STARRED:Ljava/lang/String; = "state/starred"


# instance fields
.field public mClient:Lokhttp3/OkHttpClient;

.field public final mContext:Landroid/content/Context;

.field public mRequestStop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lrn6;->mRequestStop:Z

    .line 3
    iput-object p1, p0, Lrn6;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getClient(Landroid/content/Context;)Lrn6;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn6;->c0(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Lsn6;

    invoke-direct {v0, p0}, Lsn6;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 4
    new-instance v0, Lxn6;

    invoke-direct {v0, p0}, Lxn6;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 5
    new-instance v0, Lwn6;

    invoke-direct {v0, p0}, Lwn6;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 6
    :cond_3
    new-instance p0, Lgw6;

    const-string v0, "Please logout and login again!"

    invoke-direct {p0, v0}, Lgw6;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getClientName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcn6;->c0(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, "feedly"

    return-object p0

    :cond_0
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    const-string p0, "the old reader"

    return-object p0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const-string p0, "inoreader"

    return-object p0

    :cond_2
    const/4 v0, 0x7

    if-ne p0, v0, :cond_3

    const-string p0, "local"

    return-object p0

    :cond_3
    const-string p0, "no service"

    return-object p0
.end method


# virtual methods
.method public abstract disableTag(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public abstract editItemTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public abstract editSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public abstract getCategoryUid(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public abstract getClientName()Ljava/lang/String;
.end method

.method public abstract getClientService()I
.end method

.method public abstract getTagUid(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public abstract handleItemIdList(Lrn6$a;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public abstract handleItemList(Lrn6$b;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public abstract handleReaderList(Lrn6$d;Lrn6$c;Lrn6$e;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public abstract markAllAsRead(Ljava/lang/String;Ljava/lang/String;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public abstract markAsRead(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public abstract markAsRead([Ljava/lang/String;[Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public abstract markAsUnread(Ljava/lang/String;Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public abstract markAsUnread([Ljava/lang/String;[Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public abstract renameTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation
.end method

.method public setRequestStop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lrn6;->mRequestStop:Z

    return-void
.end method
