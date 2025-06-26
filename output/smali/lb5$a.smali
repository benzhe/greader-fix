.class public Llb5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llb5;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Llb5;


# direct methods
.method public constructor <init>(Llb5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llb5$a;->e:Llb5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Llb5$a;->e:Llb5;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Llb5$c;

    .line 3
    iget-object v1, v0, Llb5;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v0, Llb5;->c:Llb5$c;

    if-eq v2, p1, :cond_1

    iget-object v2, v0, Llb5;->d:Llb5$c;

    if-ne v2, p1, :cond_2

    :cond_1
    const/4 v2, 0x2

    .line 5
    invoke-virtual {v0, p1, v2}, Llb5;->a(Llb5$c;I)Z

    .line 6
    :cond_2
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
