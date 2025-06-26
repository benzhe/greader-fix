.class public final synthetic Ljn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lkn2;


# direct methods
.method public constructor <init>(Lkn2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljn2;->a:Lkn2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 3

    iget-object v0, p0, Ljn2;->a:Lkn2;

    check-cast p1, Lcn2;

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lnn2;

    iget-object v2, v0, Lkn2;->b:Lon2;

    invoke-direct {v1, p1, v2}, Lnn2;-><init>(Lcn2;Lon2;)V

    invoke-static {v1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
