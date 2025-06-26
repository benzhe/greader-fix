.class public final Lrj1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lt70;


# direct methods
.method public constructor <init>(Lij1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrj1;->a:Lt70;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lt70;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lrj1;->a:Lt70;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
