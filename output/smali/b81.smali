.class public final Lb81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Li61;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lhl2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lsk2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lxa1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lnb1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lmi2;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lt91;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lrc1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lhl2;",
            ">;",
            "Lmb3<",
            "Lsk2;",
            ">;",
            "Lmb3<",
            "Lxa1;",
            ">;",
            "Lmb3<",
            "Lnb1;",
            ">;",
            "Lmb3<",
            "Lmi2;",
            ">;",
            "Lmb3<",
            "Lt91;",
            ">;",
            "Lmb3<",
            "Lrc1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb81;->a:Lmb3;

    .line 3
    iput-object p2, p0, Lb81;->b:Lmb3;

    .line 4
    iput-object p3, p0, Lb81;->c:Lmb3;

    .line 5
    iput-object p4, p0, Lb81;->d:Lmb3;

    .line 6
    iput-object p5, p0, Lb81;->e:Lmb3;

    .line 7
    iput-object p6, p0, Lb81;->f:Lmb3;

    .line 8
    iput-object p7, p0, Lb81;->g:Lmb3;

    return-void
.end method

.method public static a(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)Lb81;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lhl2;",
            ">;",
            "Lmb3<",
            "Lsk2;",
            ">;",
            "Lmb3<",
            "Lxa1;",
            ">;",
            "Lmb3<",
            "Lnb1;",
            ">;",
            "Lmb3<",
            "Lmi2;",
            ">;",
            "Lmb3<",
            "Lt91;",
            ">;",
            "Lmb3<",
            "Lrc1;",
            ">;)",
            "Lb81;"
        }
    .end annotation

    .line 1
    new-instance v8, Lb81;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lb81;-><init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V

    return-object v8
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lb81;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lhl2;

    iget-object v0, p0, Lb81;->b:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lsk2;

    iget-object v0, p0, Lb81;->c:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lxa1;

    iget-object v0, p0, Lb81;->d:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lnb1;

    iget-object v0, p0, Lb81;->e:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lmi2;

    iget-object v0, p0, Lb81;->f:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lt91;

    iget-object v0, p0, Lb81;->g:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lrc1;

    .line 2
    new-instance v0, Li61;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Li61;-><init>(Lhl2;Lsk2;Lxa1;Lnb1;Lmi2;Lt91;Lrc1;)V

    return-object v0
.end method
