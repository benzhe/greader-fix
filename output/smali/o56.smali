.class public final synthetic Lo56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb45;


# instance fields
.field public final a:Lr56;

.field public final b:Lj96;


# direct methods
.method public constructor <init>(Lr56;Lj96;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo56;->a:Lr56;

    iput-object p2, p0, Lo56;->b:Lj96;

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lo56;->a:Lr56;

    iget-object v1, p0, Lo56;->b:Lj96;

    check-cast p1, Ljava/lang/String;

    .line 1
    iget-object v2, v0, Lr56;->a:Lr56$a;

    sget-object v3, Lmy5;->g:Lmy5;

    .line 2
    invoke-virtual {v0, v1, p1}, Lr56;->a(Lj96;Ljava/lang/String;)Ldy5$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lgj6$a;->o()V

    .line 4
    iget-object v0, p1, Lgj6$a;->f:Lgj6;

    check-cast v0, Ldy5;

    invoke-static {v0, v3}, Ldy5;->D(Ldy5;Lmy5;)V

    .line 5
    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Ldy5;

    .line 6
    invoke-virtual {p1}, Lii6;->b()[B

    move-result-object p1

    .line 7
    check-cast v2, Lx86;

    invoke-virtual {v2, p1}, Lx86;->a([B)V

    return-void
.end method
