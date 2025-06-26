.class public final synthetic Lq56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb45;


# instance fields
.field public final a:Lr56;

.field public final b:Lj96;

.field public final c:Luy5$a;


# direct methods
.method public constructor <init>(Lr56;Lj96;Luy5$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq56;->a:Lr56;

    iput-object p2, p0, Lq56;->b:Lj96;

    iput-object p3, p0, Lq56;->c:Luy5$a;

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lq56;->a:Lr56;

    iget-object v1, p0, Lq56;->b:Lj96;

    iget-object v2, p0, Lq56;->c:Luy5$a;

    check-cast p1, Ljava/lang/String;

    .line 1
    iget-object v3, v0, Lr56;->a:Lr56$a;

    sget-object v4, Lr56;->h:Ljava/util/Map;

    .line 2
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lly5;

    .line 3
    invoke-virtual {v0, v1, p1}, Lr56;->a(Lj96;Ljava/lang/String;)Ldy5$b;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lgj6$a;->o()V

    .line 5
    iget-object v0, p1, Lgj6$a;->f:Lgj6;

    check-cast v0, Ldy5;

    invoke-static {v0, v2}, Ldy5;->E(Ldy5;Lly5;)V

    .line 6
    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Ldy5;

    .line 7
    invoke-virtual {p1}, Lii6;->b()[B

    move-result-object p1

    .line 8
    check-cast v3, Lx86;

    invoke-virtual {v3, p1}, Lx86;->a([B)V

    return-void
.end method
