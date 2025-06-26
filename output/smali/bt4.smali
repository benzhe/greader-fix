.class public final synthetic Lbt4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw4;


# static fields
.field public static final a:Lcw4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbt4;

    invoke-direct {v0}, Lbt4;-><init>()V

    sput-object v0, Lbt4;->a:Lcw4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lew4;->b:Ldw4;

    .line 1
    sget-object v0, Ljc4;->f:Ljc4;

    .line 2
    invoke-virtual {v0}, Ljc4;->b()Lkc4;

    move-result-object v0

    invoke-interface {v0}, Lkc4;->B()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
