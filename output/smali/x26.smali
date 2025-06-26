.class public final Lx26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lw26;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ly36;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lz86;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lm66;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lk66;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lo26;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lo96;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lr56;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lr26;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj7<",
            "Ly36;",
            ">;",
            "Ljj7<",
            "Lz86;",
            ">;",
            "Ljj7<",
            "Lm66;",
            ">;",
            "Ljj7<",
            "Lk66;",
            ">;",
            "Ljj7<",
            "Lo26;",
            ">;",
            "Ljj7<",
            "Lo96;",
            ">;",
            "Ljj7<",
            "Lr56;",
            ">;",
            "Ljj7<",
            "Lr26;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx26;->a:Ljj7;

    .line 3
    iput-object p2, p0, Lx26;->b:Ljj7;

    .line 4
    iput-object p3, p0, Lx26;->c:Ljj7;

    .line 5
    iput-object p4, p0, Lx26;->d:Ljj7;

    .line 6
    iput-object p5, p0, Lx26;->e:Ljj7;

    .line 7
    iput-object p6, p0, Lx26;->f:Ljj7;

    .line 8
    iput-object p7, p0, Lx26;->g:Ljj7;

    .line 9
    iput-object p8, p0, Lx26;->h:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lx26;->a:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ly36;

    iget-object v0, p0, Lx26;->b:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lz86;

    iget-object v0, p0, Lx26;->c:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lm66;

    iget-object v0, p0, Lx26;->d:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lk66;

    iget-object v0, p0, Lx26;->e:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lo26;

    iget-object v0, p0, Lx26;->f:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lo96;

    iget-object v0, p0, Lx26;->g:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lr56;

    iget-object v0, p0, Lx26;->h:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lr26;

    .line 2
    new-instance v0, Lw26;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lw26;-><init>(Ly36;Lz86;Lm66;Lk66;Lo26;Lo96;Lr56;Lr26;)V

    return-object v0
.end method
