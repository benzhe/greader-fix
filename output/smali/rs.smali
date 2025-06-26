.class public abstract Lrs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrs$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lrs;
    .locals 4

    .line 1
    new-instance v0, Lms;

    sget-object v1, Lrs$a;->g:Lrs$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lms;-><init>(Lrs$a;J)V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Lrs$a;
.end method
