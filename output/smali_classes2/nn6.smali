.class public Lnn6;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnn6;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lnn6;->c:J

    .line 4
    iput-object p1, p0, Lnn6;->a:Landroid/content/Context;

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iput-object p2, p0, Lnn6;->b:Ljava/lang/String;

    :cond_0
    cmp-long p1, p3, v0

    if-lez p1, :cond_1

    .line 7
    iput-wide p3, p0, Lnn6;->c:J

    :cond_1
    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lnn6;->a:Landroid/content/Context;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lnn6;->b:Ljava/lang/String;

    iget-wide v1, p0, Lnn6;->c:J

    invoke-static {p1, v0, v1, v2}, Ln56;->s0(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
