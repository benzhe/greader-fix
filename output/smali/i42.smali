.class public final synthetic Li42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljo2;


# instance fields
.field public final a:Lg42;

.field public final b:Lhl2;

.field public final c:Lsk2;

.field public final d:Lmz1;


# direct methods
.method public constructor <init>(Lg42;Lhl2;Lsk2;Lmz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li42;->a:Lg42;

    iput-object p2, p0, Li42;->b:Lhl2;

    iput-object p3, p0, Li42;->c:Lsk2;

    iput-object p4, p0, Li42;->d:Lmz1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Li42;->a:Lg42;

    iget-object v1, p0, Li42;->b:Lhl2;

    iget-object v2, p0, Li42;->c:Lsk2;

    iget-object v3, p0, Li42;->d:Lmz1;

    check-cast p1, Ljava/lang/Void;

    .line 1
    iget-object p1, v0, Lg42;->b:Lsz1;

    invoke-interface {p1, v1, v2, v3}, Lsz1;->a(Lhl2;Lsk2;Lmz1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
