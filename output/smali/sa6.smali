.class public abstract Lsa6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsa6$a;,
        Lsa6$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lsa6$a;
    .locals 3

    .line 1
    new-instance v0, Loa6$b;

    invoke-direct {v0}, Loa6$b;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Loa6$b;->b(J)Lsa6$a;

    return-object v0
.end method


# virtual methods
.method public abstract b()Lsa6$b;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()J
.end method
