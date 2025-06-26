.class public final Lb52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv42;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv42<",
        "Lqg1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Loh1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Loh1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb52;->a:Loh1;

    return-void
.end method


# virtual methods
.method public final a(Lhl2;Lsk2;Landroid/view/View;Lc52;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance p3, Ld52;

    sget-object v0, Le52;->a:Lwh1;

    invoke-direct {p3, v0}, Ld52;-><init>(Lwh1;)V

    .line 2
    iget-object v0, p0, Lb52;->a:Loh1;

    new-instance v1, Lv61;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1, p3}, Loh1;->a(Lv61;Lrg1;)Lsg1;

    move-result-object p1

    .line 4
    new-instance p2, Lg52;

    invoke-direct {p2, p1}, Lg52;-><init>(Lsg1;)V

    .line 5
    monitor-enter p4

    .line 6
    :try_start_0
    iput-object p2, p4, Lc52;->a:Lcom/google/android/gms/ads/internal/zzg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p4

    .line 8
    invoke-virtual {p1}, Lsg1;->j()Lqg1;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p4

    throw p1
.end method
