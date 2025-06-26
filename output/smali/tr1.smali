.class public final Ltr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Ljava/util/Set<",
        "Lsf1<",
        "Lfp2;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/util/Map<",
            "Lap2;",
            "Lyr1;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Ljava/lang/String;",
            ">;",
            "Lmb3<",
            "Landroid/content/Context;",
            ">;",
            "Lmb3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lmb3<",
            "Ljava/util/Map<",
            "Lap2;",
            "Lyr1;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ltr1;->a:Lmb3;

    .line 3
    iput-object p2, p0, Ltr1;->b:Lmb3;

    .line 4
    iput-object p4, p0, Ltr1;->c:Lmb3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Ltr1;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ltr1;->b:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 2
    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v2

    .line 3
    iget-object v3, p0, Ltr1;->c:Lmb3;

    invoke-interface {v3}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 4
    sget-object v4, Ly40;->N2:Lo40;

    .line 5
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v5, v4}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    new-instance v4, Lep3;

    new-instance v5, Lip3;

    invoke-direct {v5, v1}, Lip3;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v5}, Lep3;-><init>(Lip3;)V

    .line 9
    new-instance v1, Lvr1;

    invoke-direct {v1, v0}, Lvr1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lep3;->a(Ldp3;)V

    .line 10
    new-instance v0, Lwr1;

    invoke-direct {v0, v4, v3}, Lwr1;-><init>(Lep3;Ljava/util/Map;)V

    .line 11
    new-instance v1, Lsf1;

    invoke-direct {v1, v0, v2}, Lsf1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 13
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
