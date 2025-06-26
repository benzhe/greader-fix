.class public final synthetic Lf66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# instance fields
.field public final e:Lk66;


# direct methods
.method public constructor <init>(Lk66;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf66;->e:Lk66;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lf66;->e:Lk66;

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    sget-object p1, Lbg7;->e:Lbg7;

    iput-object p1, v0, Lk66;->c:Lrb7;

    return-void
.end method
