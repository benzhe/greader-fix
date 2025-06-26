.class public Ld57$b$c;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld57$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ld57$b;


# direct methods
.method public constructor <init>(Ld57$b;Ld57$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld57$b$c;->b:Ld57$b;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ld57$b$c;->a:Z

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Ld57$b$c;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ld57$b$c;->b:Ld57$b;

    .line 3
    iget-object p1, p1, Ld57$b;->a:Lf47;

    .line 4
    invoke-virtual {p1}, Lf47;->i()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Ld57$b$c;->b:Ld57$b;

    .line 6
    iget-object p1, p1, Ld57$b;->a:Lf47;

    .line 7
    invoke-virtual {p1}, Lf47;->l()V

    :goto_0
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Ld57$b$c;->a:Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Ld57$b$c;->a:Z

    return-void
.end method
