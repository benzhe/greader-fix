.class public final synthetic Llj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lei2;


# instance fields
.field public final a:Lgn0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgn0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj2;->a:Lgn0;

    iput-object p2, p0, Llj2;->b:Ljava/lang/String;

    iput-object p3, p0, Llj2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llj2;->a:Lgn0;

    iget-object v1, p0, Llj2;->b:Ljava/lang/String;

    iget-object v2, p0, Llj2;->c:Ljava/lang/String;

    check-cast p1, Lhn0;

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lhn0;->O4(Lgn0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
