.class public Lcom/noinnion/android/reader/common/subscription/Feed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public content:Ljava/lang/String;

.field public id:J

.field public image:Ljava/lang/String;

.field public selected:Z

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/noinnion/android/reader/common/subscription/Feed;->id:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/noinnion/android/reader/common/subscription/Feed;->selected:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/noinnion/android/reader/common/subscription/Feed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/noinnion/android/reader/common/subscription/Feed;->id:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/noinnion/android/reader/common/subscription/Feed;->selected:Z

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, "RSS"

    :cond_1
    iput-object p1, p0, Lcom/noinnion/android/reader/common/subscription/Feed;->title:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/noinnion/android/reader/common/subscription/Feed;->image:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/noinnion/android/reader/common/subscription/Feed;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
