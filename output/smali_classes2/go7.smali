.class public abstract Lgo7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgo7$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 1

    const-string v0, "unit"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgo7;->a:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public a()Ljo7;
    .locals 8

    .line 1
    new-instance v7, Lgo7$a;

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p0

    .line 3
    invoke-direct/range {v0 .. v6}, Lgo7$a;-><init>(JLgo7;DLgm7;)V

    return-object v7
.end method
