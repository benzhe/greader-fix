.class public final Lir7;
.super Lor7;
.source "SourceFile"


# static fields
.field public static final a:Lir7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lir7;

    invoke-direct {v0}, Lir7;-><init>()V

    sput-object v0, Lir7;->a:Lir7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lor7;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
