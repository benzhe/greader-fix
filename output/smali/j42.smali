.class public final synthetic Lj42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio2;


# instance fields
.field public final a:Lg42;

.field public final b:Lhl2;

.field public final c:Lsk2;

.field public final d:Lmz1;


# direct methods
.method public constructor <init>(Lg42;Lhl2;Lsk2;Lmz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj42;->a:Lg42;

    iput-object p2, p0, Lj42;->b:Lhl2;

    iput-object p3, p0, Lj42;->c:Lsk2;

    iput-object p4, p0, Lj42;->d:Lmz1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lj42;->a:Lg42;

    iget-object v1, p0, Lj42;->b:Lhl2;

    iget-object v2, p0, Lj42;->c:Lsk2;

    iget-object v3, p0, Lj42;->d:Lmz1;

    .line 1
    iget-object v0, v0, Lg42;->b:Lsz1;

    invoke-interface {v0, v1, v2, v3}, Lsz1;->b(Lhl2;Lsk2;Lmz1;)V

    return-void
.end method
