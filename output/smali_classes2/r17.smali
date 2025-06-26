.class public Lr17;
.super Lj27;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj27;-><init>()V

    .line 2
    iput-object p1, p0, Lr17;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c(Lh27;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lh27;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lh27;I)Lj27$a;
    .locals 1
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
    iget-object p1, p1, Lh27;->c:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ln56;->e2(Ljava/io/InputStream;)Lvt7;

    move-result-object p1

    .line 4
    new-instance p2, Lj27$a;

    sget-object v0, Le27$d;->g:Le27$d;

    invoke-direct {p2, p1, v0}, Lj27$a;-><init>(Lvt7;Le27$d;)V

    return-object p2
.end method
