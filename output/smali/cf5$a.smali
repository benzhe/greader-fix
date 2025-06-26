.class public Lcf5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbf5$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcf5;->f(Ljava/lang/String;Lbf5$b;)Lbf5$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcf5;


# direct methods
.method public constructor <init>(Lcf5;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcf5$a;->b:Lcf5;

    iput-object p2, p0, Lcf5$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcf5$a;->b:Lcf5;

    iget-object v1, p0, Lcf5$a;->a:Ljava/lang/String;

    .line 1
    invoke-virtual {v0, v1}, Lcf5;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcf5$a;->a:Ljava/lang/String;

    const-string v1, "fiam"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcf5$a;->b:Lcf5;

    iget-object v0, v0, Lcf5;->b:Ljava/util/Map;

    iget-object v1, p0, Lcf5$a;->a:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldf5;

    invoke-interface {v0, p1}, Ldf5;->a(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method
