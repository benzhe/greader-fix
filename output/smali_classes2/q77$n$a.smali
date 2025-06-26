.class public final Lq77$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq77$n;->d(Li37;Lc47$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic e:Lc47$i;

.field public final synthetic f:Li37;

.field public final synthetic g:Lq77$n;


# direct methods
.method public constructor <init>(Lq77$n;Lc47$i;Li37;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq77$n$a;->g:Lq77$n;

    iput-object p2, p0, Lq77$n$a;->e:Lc47$i;

    iput-object p3, p0, Lq77$n$a;->f:Li37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq77$n$a;->g:Lq77$n;

    iget-object v1, v0, Lq77$n;->b:Lq77;

    .line 2
    iget-object v2, v1, Lq77;->y:Lq77$n;

    if-eq v0, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lq77$n$a;->e:Lc47$i;

    .line 4
    iput-object v0, v1, Lq77;->z:Lc47$i;

    .line 5
    iget-object v1, v1, Lq77;->D:Lh67;

    invoke-virtual {v1, v0}, Lh67;->i(Lc47$i;)V

    .line 6
    iget-object v0, p0, Lq77$n$a;->f:Li37;

    sget-object v1, Li37;->i:Li37;

    if-eq v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lq77$n$a;->g:Lq77$n;

    iget-object v1, v1, Lq77$n;->b:Lq77;

    .line 8
    iget-object v1, v1, Lq77;->N:Lz27;

    .line 9
    sget-object v2, Lz27$a;->f:Lz27$a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lq77$n$a;->e:Lc47$i;

    aput-object v4, v3, v0

    const-string v0, "Entering {0} state with picker: {1}"

    invoke-virtual {v1, v2, v0, v3}, Lz27;->b(Lz27$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lq77$n$a;->g:Lq77$n;

    iget-object v0, v0, Lq77$n;->b:Lq77;

    .line 11
    iget-object v0, v0, Lq77;->s:Le67;

    .line 12
    iget-object v1, p0, Lq77$n$a;->f:Li37;

    invoke-virtual {v0, v1}, Le67;->a(Li37;)V

    :cond_1
    return-void
.end method
