.class public final Luf7$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luf7$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Ly38;

.field public final f:J


# direct methods
.method public constructor <init>(Ly38;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Luf7$a$a;->e:Ly38;

    .line 3
    iput-wide p2, p0, Luf7$a$a;->f:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Luf7$a$a;->e:Ly38;

    iget-wide v1, p0, Luf7$a$a;->f:J

    invoke-interface {v0, v1, v2}, Ly38;->l(J)V

    return-void
.end method
