.class public final synthetic Lwx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls96;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwx5;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lwx5;->a:Landroid/content/Context;

    .line 1
    sget v1, Lzx5;->b:I

    .line 2
    sget-object v1, Lcy5;->b:Lcy5;

    const-class v1, Lcy5;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v2, Lcy5;->b:Lcy5;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcy5;

    invoke-direct {v2, v0}, Lcy5;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcy5;->b:Lcy5;

    .line 5
    :cond_0
    sget-object v0, Lcy5;->b:Lcy5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
