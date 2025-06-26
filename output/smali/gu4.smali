.class public final synthetic Lgu4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw4;


# static fields
.field public static final a:Lcw4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgu4;

    invoke-direct {v0}, Lgu4;-><init>()V

    sput-object v0, Lgu4;->a:Lcw4;

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
    sget-object v0, Lbd4;->f:Lbd4;

    .line 2
    invoke-virtual {v0}, Lbd4;->c()Lcd4;

    move-result-object v0

    invoke-interface {v0}, Lcd4;->b()Z

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
