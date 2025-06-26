.class public final Lm57$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm57;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lc47$d;

.field public b:Lc47;

.field public c:Ld47;

.field public final synthetic d:Lm57;


# direct methods
.method public constructor <init>(Lm57;Lc47$d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lm57$b;->d:Lm57;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lm57$b;->a:Lc47$d;

    .line 3
    iget-object v0, p1, Lm57;->a:Le47;

    .line 4
    iget-object v1, p1, Lm57;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Le47;->a(Ljava/lang/String;)Ld47;

    move-result-object v0

    iput-object v0, p0, Lm57$b;->c:Ld47;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p2}, Lc47$c;->a(Lc47$d;)Lc47;

    move-result-object p1

    iput-object p1, p0, Lm57$b;->b:Lc47;

    return-void

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not find policy \'"

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    iget-object p1, p1, Lm57;->b:Ljava/lang/String;

    const-string v1, "\'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."

    .line 9
    invoke-static {v0, p1, v1}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
