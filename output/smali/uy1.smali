.class public final synthetic Luy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljo2;


# instance fields
.field public final a:Lls0;


# direct methods
.method public constructor <init>(Lls0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luy1;->a:Lls0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Luy1;->a:Lls0;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    invoke-static {p1, v0}, Lsy1;->a(Landroid/database/sqlite/SQLiteDatabase;Lls0;)V

    const/4 p1, 0x0

    return-object p1
.end method
