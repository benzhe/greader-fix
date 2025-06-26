.class public final Lq77$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq77;->j(Z)Li37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final synthetic e:Lq77;


# direct methods
.method public constructor <init>(Lq77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$e;->e:Lq77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq77$e;->e:Lq77;

    invoke-virtual {v0}, Lq77;->s()V

    .line 2
    iget-object v0, p0, Lq77$e;->e:Lq77;

    .line 3
    iget-object v0, v0, Lq77;->z:Lc47$i;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lq77$e;->e:Lq77;

    .line 5
    iget-object v0, v0, Lq77;->z:Lc47$i;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v0, p0, Lq77$e;->e:Lq77;

    .line 8
    iget-object v0, v0, Lq77;->y:Lq77$n;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, v0, Lq77$n;->a:Lm57$b;

    .line 10
    iget-object v0, v0, Lm57$b;->b:Lc47;

    .line 11
    invoke-virtual {v0}, Lc47;->c()V

    :cond_1
    return-void
.end method
