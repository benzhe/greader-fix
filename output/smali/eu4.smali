.class public final synthetic Leu4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw4;


# static fields
.field public static final a:Lcw4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Leu4;

    invoke-direct {v0}, Leu4;-><init>()V

    sput-object v0, Leu4;->a:Lcw4;

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
    sget-object v0, Lwb4;->f:Lwb4;

    .line 2
    iget-object v0, v0, Lwb4;->e:Lg74;

    .line 3
    invoke-interface {v0}, Lg74;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxb4;

    .line 4
    invoke-interface {v0}, Lxb4;->a()Z

    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
