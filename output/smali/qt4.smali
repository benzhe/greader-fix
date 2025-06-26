.class public final synthetic Lqt4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw4;


# static fields
.field public static final a:Lcw4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqt4;

    invoke-direct {v0}, Lqt4;-><init>()V

    sput-object v0, Lqt4;->a:Lcw4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lew4;->b:Ldw4;

    .line 1
    sget-object v0, Lwe4;->f:Lwe4;

    .line 2
    invoke-virtual {v0}, Lwe4;->b()Lxe4;

    move-result-object v0

    invoke-interface {v0}, Lxe4;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
