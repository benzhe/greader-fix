.class public Ld77$d$a;
.super Lo67;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld77$d;->g(Lj47;Li47;Lx27;)Ly57;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly57;

.field public final synthetic b:Ld77$d;


# direct methods
.method public constructor <init>(Ld77$d;Ly57;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld77$d$a;->b:Ld77$d;

    iput-object p2, p0, Ld77$d$a;->a:Ly57;

    invoke-direct {p0}, Lo67;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lz57;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld77$d$a;->b:Ld77$d;

    .line 2
    iget-object v0, v0, Ld77$d;->b:Lq57;

    .line 3
    iget-object v1, v0, Lq57;->b:Lp77;

    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Lp77;->a(J)V

    .line 4
    iget-object v0, v0, Lq57;->a:Ld97;

    invoke-interface {v0}, Ld97;->a()J

    .line 5
    new-instance v0, Ld77$d$a$a;

    invoke-direct {v0, p0, p1}, Ld77$d$a$a;-><init>(Ld77$d$a;Lz57;)V

    .line 6
    iget-object p1, p0, Ld77$d$a;->a:Ly57;

    .line 7
    invoke-interface {p1, v0}, Ly57;->k(Lz57;)V

    return-void
.end method
