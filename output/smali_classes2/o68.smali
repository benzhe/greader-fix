.class public abstract Lo68;
.super Lp68;
.source "SourceFile"

# interfaces
.implements Lt68;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp68;-><init>()V

    return-void
.end method


# virtual methods
.method public C(JLb78;)Lt68;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-interface {p0, p1, p2, p3}, Lt68;->I(JLb78;)Lt68;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1, p3}, Lt68;->I(JLb78;)Lt68;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-interface {p0, p1, p2, p3}, Lt68;->I(JLb78;)Lt68;

    move-result-object p1

    :goto_0
    return-object p1
.end method
