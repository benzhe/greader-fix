.class public final synthetic Lb02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# instance fields
.field public final a:Lf31;


# direct methods
.method public constructor <init>(Lf31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb02;->a:Lf31;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object p1, p0, Lb02;->a:Lf31;

    .line 2
    check-cast p1, Lb01;

    .line 3
    new-instance v8, Li61;

    iget-object v0, p1, Lb01;->b:Lv61;

    invoke-static {v0}, Lz61;->a(Lv61;)Lhl2;

    move-result-object v1

    iget-object v0, p1, Lb01;->b:Lv61;

    invoke-static {v0}, Ly61;->a(Lv61;)Lsk2;

    move-result-object v2

    iget-object v0, p1, Lb01;->q:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lxa1;

    iget-object v0, p1, Lb01;->f0:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lnb1;

    iget-object v0, p1, Lb01;->G0:Lyz0;

    .line 4
    iget-object v0, v0, Lyz0;->h:Lyd1;

    .line 5
    iget-object v5, v0, Lyd1;->m:Lmi2;

    .line 6
    new-instance v6, Lt91;

    iget-object v0, p1, Lb01;->b:Lv61;

    invoke-static {v0}, Ly61;->a(Lv61;)Lsk2;

    move-result-object v0

    iget-object v7, p1, Lb01;->b:Lv61;

    invoke-static {v7}, Lx61;->a(Lv61;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p1, Lb01;->G0:Lyz0;

    .line 7
    iget-object v9, v9, Lyz0;->S0:Lmb3;

    .line 8
    invoke-interface {v9}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnz1;

    invoke-direct {v6, v0, v7, v9}, Lt91;-><init>(Lsk2;Ljava/lang/String;Lnz1;)V

    .line 9
    iget-object v0, p1, Lb01;->r:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lrc1;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Li61;-><init>(Lhl2;Lsk2;Lxa1;Lnb1;Lmi2;Lt91;Lrc1;)V

    .line 10
    iget-object v0, p1, Lb01;->c:Lj31;

    .line 11
    iget-object v2, v0, Lj31;->a:Landroid/view/View;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 12
    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iget-object v1, p1, Lb01;->c:Lj31;

    .line 14
    iget-object v3, v1, Lj31;->b:Lxw0;

    .line 15
    iget-object v4, v1, Lj31;->c:Luk2;

    .line 16
    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iget-object v0, p1, Lb01;->c:Lj31;

    .line 18
    iget v5, v0, Lj31;->d:I

    .line 19
    iget-boolean v6, v0, Lj31;->e:Z

    .line 20
    iget-boolean v7, v0, Lj31;->f:Z

    .line 21
    new-instance v9, Lm31;

    iget-object v0, p1, Lb01;->G0:Lyz0;

    iget-object v0, v0, Lyz0;->Z1:Lpz0;

    .line 22
    iget-object v0, v0, Lpz0;->M:Lmb3;

    .line 23
    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lns1;

    iget-object v1, p1, Lb01;->b:Lv61;

    invoke-static {v1}, Lz61;->a(Lv61;)Lhl2;

    move-result-object v1

    iget-object p1, p1, Lb01;->G0:Lyz0;

    iget-object p1, p1, Lyz0;->Z1:Lpz0;

    .line 24
    iget-object p1, p1, Lpz0;->n:Lmb3;

    .line 25
    invoke-interface {p1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpp2;

    invoke-direct {v9, v0, v1, p1}, Lm31;-><init>(Lns1;Lhl2;Lpp2;)V

    .line 26
    new-instance p1, Lv31;

    move-object v0, p1

    move-object v1, v8

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lv31;-><init>(Li61;Landroid/view/View;Lxw0;Luk2;IZZLm31;)V

    return-object p1
.end method
