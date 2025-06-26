.class public final synthetic Lab6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lbb6;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbb6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lab6;->a:Ljava/lang/String;

    iput-object p2, p0, Lab6;->b:Lbb6;

    return-void
.end method


# virtual methods
.method public a(Ltf5;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lab6;->a:Ljava/lang/String;

    iget-object v1, p0, Lab6;->b:Lbb6;

    .line 1
    const-class v2, Landroid/content/Context;

    invoke-interface {p1, v2}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v1, p1}, Lbb6;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v1, Lva6;

    invoke-direct {v1, v0, p1}, Lva6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
