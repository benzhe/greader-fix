.class public final Lwe1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lv22;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lyd1;

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lb20;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lx22;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lnz1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyd1;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyd1;",
            "Lmb3<",
            "Lb20;",
            ">;",
            "Lmb3<",
            "Lx22;",
            ">;",
            "Lmb3<",
            "Lnz1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwe1;->a:Lyd1;

    .line 3
    iput-object p2, p0, Lwe1;->b:Lmb3;

    .line 4
    iput-object p3, p0, Lwe1;->c:Lmb3;

    .line 5
    iput-object p4, p0, Lwe1;->d:Lmb3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lwe1;->a:Lyd1;

    iget-object v1, p0, Lwe1;->b:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb20;

    iget-object v2, p0, Lwe1;->c:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx22;

    iget-object v3, p0, Lwe1;->d:Lmb3;

    invoke-interface {v3}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz1;

    .line 2
    iget-object v4, v0, Lyd1;->o:Lv22;

    if-nez v4, :cond_0

    .line 3
    new-instance v4, Lv22;

    invoke-direct {v4, v1, v2, v3}, Lv22;-><init>(Lb20;Lx22;Lnz1;)V

    iput-object v4, v0, Lyd1;->o:Lv22;

    .line 4
    :cond_0
    iget-object v0, v0, Lyd1;->o:Lv22;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
