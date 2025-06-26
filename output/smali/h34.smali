.class public final Lh34;
.super Ldg4;
.source "SourceFile"


# instance fields
.field public final e:Lry4;


# direct methods
.method public constructor <init>(Lry4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldg4;-><init>()V

    iput-object p1, p0, Lh34;->e:Lry4;

    return-void
.end method


# virtual methods
.method public final h()I
    .locals 1

    iget-object v0, p0, Lh34;->e:Lry4;

    .line 1
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final o1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lh34;->e:Lry4;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1
    invoke-interface/range {v0 .. v5}, Lry4;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method
