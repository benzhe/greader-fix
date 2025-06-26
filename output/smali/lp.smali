.class public Llp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Z

.field public final c:Lwp;

.field public d:[C


# direct methods
.method public constructor <init>(Lwp;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Llp;->c:Lwp;

    .line 3
    iput-object p2, p0, Llp;->a:Ljava/lang/Object;

    .line 4
    iput-boolean p3, p0, Llp;->b:Z

    return-void
.end method
