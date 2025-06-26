.class public final synthetic Ldh4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# static fields
.field public static final a:Lwf5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldh4;

    invoke-direct {v0}, Ldh4;-><init>()V

    sput-object v0, Ldh4;->a:Lwf5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ltf5;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lbh4;

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-interface {p1, v1}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lkh6;

    .line 3
    invoke-interface {p1, v2}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkh6;

    const-class v3, Lbh4$a;

    .line 4
    invoke-interface {p1, v3}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbh4$a;

    invoke-direct {v0, v1, v2, p1}, Lbh4;-><init>(Landroid/content/Context;Lkh6;Lbh4$a;)V

    return-object v0
.end method
