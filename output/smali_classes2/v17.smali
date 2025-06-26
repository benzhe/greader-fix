.class public Lv17;
.super Lr17;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lr17;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c(Lh27;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lh27;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lh27;I)Lj27$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lr17;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 2
    iget-object v0, p1, Lh27;->c:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    .line 3
    invoke-static {p2}, Ln56;->e2(Ljava/io/InputStream;)Lvt7;

    move-result-object p2

    .line 4
    new-instance v0, Lj27$a;

    const/4 v1, 0x0

    sget-object v2, Le27$d;->g:Le27$d;

    iget-object p1, p1, Lh27;->c:Landroid/net/Uri;

    .line 5
    new-instance v3, Lpb;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lpb;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    .line 6
    invoke-virtual {v3, p1}, Lpb;->d(Ljava/lang/String;)Lpb$b;

    move-result-object p1

    const/4 v4, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    iget-object v3, v3, Lpb;->e:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v3}, Lpb$b;->f(Ljava/nio/ByteOrder;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :goto_0
    invoke-direct {v0, v1, p2, v2, v4}, Lj27$a;-><init>(Landroid/graphics/Bitmap;Lvt7;Le27$d;I)V

    return-object v0
.end method
