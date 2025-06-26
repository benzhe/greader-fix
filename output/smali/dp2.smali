.class public final synthetic Ldp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# instance fields
.field public final a:Llo2;

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Llo2;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldp2;->a:Llo2;

    iput-object p2, p0, Ldp2;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldp2;->a:Llo2;

    iget-object v1, p0, Ldp2;->b:Ljava/lang/Throwable;

    check-cast p1, Lfp2;

    .line 2
    iget-object v2, v0, Llo2;->e:Ljava/lang/Object;

    .line 3
    check-cast v2, Lap2;

    .line 4
    iget-object v0, v0, Llo2;->f:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v2, v0, v1}, Lfp2;->d(Lap2;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
