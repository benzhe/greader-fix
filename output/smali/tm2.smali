.class public final Ltm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsr2;


# instance fields
.field public final synthetic a:Lpq2;


# direct methods
.method public constructor <init>(Lpq2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltm2;->a:Lpq2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltm2;->a:Lpq2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lpq2;->f(IJ)Le45;

    return-void
.end method

.method public final b(IJLjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ltm2;->a:Lpq2;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v2, v1, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v6, p4

    .line 3
    invoke-virtual/range {v0 .. v6}, Lpq2;->c(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Le45;

    return-void
.end method
