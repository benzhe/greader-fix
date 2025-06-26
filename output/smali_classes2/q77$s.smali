.class public final Lq77$s;
.super Ll47$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "s"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lm57;

.field public final d:Lz27;


# direct methods
.method public constructor <init>(ZIILm57;Lz27;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll47$g;-><init>()V

    .line 2
    iput p2, p0, Lq77$s;->a:I

    .line 3
    iput p3, p0, Lq77$s;->b:I

    const-string p1, "autoLoadBalancerFactory"

    .line 4
    invoke-static {p4, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lq77$s;->c:Lm57;

    const-string p1, "channelLogger"

    .line 5
    invoke-static {p5, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Lq77$s;->d:Lz27;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ll47$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ll47$b;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lq77$s;->c:Lm57;

    iget-object v1, p0, Lq77$s;->d:Lz27;

    .line 2
    invoke-virtual {v0, p1, v1}, Lm57;->b(Ljava/util/Map;Lz27;)Ll47$b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Ll47$b;->a:Lx47;

    if-eqz v1, :cond_1

    .line 4
    new-instance p1, Ll47$b;

    invoke-direct {p1, v1}, Ll47$b;-><init>(Lx47;)V

    return-object p1

    .line 5
    :cond_1
    iget-object v0, v0, Ll47$b;->b:Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    .line 6
    iget v2, p0, Lq77$s;->a:I

    iget v3, p0, Lq77$s;->b:I

    .line 7
    invoke-static {p1, v1, v2, v3, v0}, Lb87;->a(Ljava/util/Map;ZIILjava/lang/Object;)Lb87;

    move-result-object p1

    .line 8
    new-instance v0, Ll47$b;

    invoke-direct {v0, p1}, Ll47$b;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 9
    sget-object v0, Lx47;->h:Lx47;

    const-string v1, "failed to parse service config"

    .line 10
    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object p1

    .line 11
    new-instance v0, Ll47$b;

    invoke-direct {v0, p1}, Ll47$b;-><init>(Lx47;)V

    return-object v0
.end method
