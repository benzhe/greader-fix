.class public final Lmn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:J

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmn6;->e:Landroid/app/Activity;

    iput-wide p2, p0, Lmn6;->f:J

    iput-object p4, p0, Lmn6;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lmn6;->e:Landroid/app/Activity;

    iget-wide v2, p0, Lmn6;->f:J

    iget-object v4, p0, Lmn6;->g:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v1, "com.noinnion.android.greader.reader.action.PlAY_NEXT"

    .line 2
    invoke-static/range {v0 .. v5}, Ln56;->j2(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v6, p0, Lmn6;->e:Landroid/app/Activity;

    iget-wide v8, p0, Lmn6;->f:J

    iget-object v10, p0, Lmn6;->g:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v7, "com.noinnion.android.greader.reader.action.PlAY_NOW"

    .line 4
    invoke-static/range {v6 .. v11}, Ln56;->j2(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lmn6;->e:Landroid/app/Activity;

    iget-wide v2, p0, Lmn6;->f:J

    iget-object v4, p0, Lmn6;->g:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v1, "com.noinnion.android.greader.reader.action.APPEND"

    .line 6
    invoke-static/range {v0 .. v5}, Ln56;->j2(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
