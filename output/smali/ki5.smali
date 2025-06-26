.class public Lki5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lii5$g;


# instance fields
.field public final synthetic a:Loj5;


# direct methods
.method public constructor <init>(Lii5;Loj5;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lki5;->a:Loj5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrl5;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lki5;->a:Loj5;

    .line 2
    iget-object v0, v0, Loj5;->a:Ljava/lang/String;

    .line 3
    sget-object v1, Lsl5;->a:Lpl5;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 4
    :cond_0
    invoke-static {v0}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Lsl5;->j(Ljava/lang/String;)Lpl5;

    .line 6
    invoke-static {v1}, Lsl5;->j(Ljava/lang/String;)Lpl5;

    const/4 v1, 0x1

    .line 7
    invoke-static {v1, v0}, Lrl5;->b(ILpl5;)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x6

    .line 8
    invoke-virtual {p1, v4, v3}, Lrl5;->r(II)V

    .line 9
    invoke-virtual {p1, v2}, Lrl5;->p(I)V

    .line 10
    invoke-virtual {p1, v1, v0}, Lrl5;->m(ILpl5;)V

    return-void
.end method
