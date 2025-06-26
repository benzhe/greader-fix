.class public Lu57;
.super Lf67;
.source "SourceFile"


# instance fields
.field public final synthetic f:La37$a;

.field public final synthetic g:Lx47;

.field public final synthetic h:Lt57;


# direct methods
.method public constructor <init>(Lt57;La37$a;Lx47;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lu57;->h:Lt57;

    iput-object p2, p0, Lu57;->f:La37$a;

    iput-object p3, p0, Lu57;->g:Lx47;

    .line 2
    iget-object p1, p1, Lt57;->e:Ll37;

    .line 3
    invoke-direct {p0, p1}, Lf67;-><init>(Ll37;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lu57;->h:Lt57;

    iget-object v1, p0, Lu57;->f:La37$a;

    iget-object v2, p0, Lu57;->g:Lx47;

    new-instance v3, Li47;

    invoke-direct {v3}, Li47;-><init>()V

    .line 2
    iget-boolean v4, v0, Lt57;->u:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    .line 3
    iput-boolean v4, v0, Lt57;->u:Z

    .line 4
    invoke-virtual {v1, v2, v3}, La37$a;->a(Lx47;Li47;)V

    :cond_0
    return-void
.end method
